------------------------------
-- Progetto reti logiche 2022
-- Davide Grazzani, 10660259
------------------------------


--Flip Flop type D

library ieee;
use ieee.std_logic_1164.all;

entity FF_D is
    port(
        input  : in std_logic;
        clk    : in std_logic;
        rst    : in std_logic;
        output : out std_logic
    );
end FF_D;

architecture behavioral of FF_D is
    begin
        process(clk,rst)
        begin
            if rst = '1' then
                output <= '0';
            elsif rising_edge(clk) then
                output <= input;
            end if;
        end process;
end behavioral;

architecture dataflow of FF_D is
    signal output_inout : std_logic;
    
    begin
        output_inout <= '0' when rst = '1' else
                  input when rising_edge(clk) else output_inout; 
        output <= output_inout;
end dataflow;
    

-- Convolutional encoder with 1/2 transmission ratio

library ieee;
use ieee.std_logic_1164.all;

entity convolutional_encoder is 
    port(
        u   : in std_logic;
        controller_clk : in std_logic;
        rst : in std_logic;
        pk : out std_logic_vector(1 downto 0)
    );
end convolutional_encoder;

architecture structural of convolutional_encoder is
    signal FF1_signal : std_logic := '0';
    signal FF2_signal : std_logic := '0';
    signal p1k : std_logic;
    signal p2k : std_logic;

    component FF_D is
        port(
        input  : in std_logic;
        clk    : in std_logic;
        rst    : in std_logic;
        output : out std_logic
    );
    end component;

    begin
        FF1 : FF_D
            port map(input => u,clk => controller_clk,rst => rst, output => FF1_signal);
        FF2 : FF_D
            port map(input => FF1_signal,clk => controller_clk,rst => rst, output => FF2_signal);
        -- domanda : bisogna resettare il segnale in uscita dal covolutore -> per ora non implemento
        p1k <= u xor FF2_signal when clk = '1' else p1k;
        p2k <= u xor FF1_signal xor FF2_signal when clk = '1' else p2k;
        pk <= p1k & p2k;

end structural;

-- string concatenator

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity string_managar is
    port(
    controller_clk : in std_logic;
    rst : in std_logic;
    bits : in std_logic_vector(1 downto 0);
    half_z : out std_logic_vector(7 downto 0)
    );
end string_managar;

architecture dataflow of string_managar is
    signal half_z_inout : std_logic_vector(7 downto 0) := (others => '0');
    signal counter : unsigned(2 downto 0) := "11";
    constant bit1 : unsigned(2 downto 0) := "01";
    constant zero : unsigned(2 downto 0) := "00";
    constant full : unsigned(2 downto 0) := "11";

    begin
        counter <= counter - bit1 when (falling_edge(controller_clk) and counter /= zero and rst = '0') else
                   full when(falling_edge(controller_clk) and (counter = zero or rst = '1')) else counter;
        half_z_inout <= bits & half_z_inout(5 downto 0) when (counter = "11" and rst = '0') else
                        half_z_inout(7 downto 6) & bits & half_z_inout(3 downto 0) when (counter = "10" and rst = '0') else
                        half_z_inout(7 downto 4) & bits & half_z_inout(1 downto 0) when (counter = "01" and rst = '0') else
                        half_z_inout(7 downto 2) & bits when (counter = "00" and rst = '0') else
                        "00000000" when rst = '1' else half_z_inout;
        half_z <= half_z_inout;
end dataflow;
    


-- controller to iterate between states

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is
    port(
        clock : in std_logic;
        reset : in std_logic;
        start : in std_logic;
        data : in std_logic_vector (7 downto 0);
        done : out std_logic := '-';
        mem_address : out std_logic_vector(15 downto 0);
        mem_enable : out std_logic;
        mem_write : out std_logic;
        u : out std_logic;
        controller_clk : out std_logic := '0'
    );
end controller;

architecture dataflow of controller is
    type state_type is (idle,r_wc,r,p_0,p_1,p_2,p_3,p_4,p_5,p_6,p_7);
    signal next_state : state_type;
    signal current_state : state_type := idle;
    signal number_of_words : integer;
    signal base_read : integer := 0;
    signal base_write : integer := 1000;
    signal done_inout : std_logic := '0';
    
    begin
        done_inout <= '1' when (current_state = idle and number_of_words = 0 and reset = '0' and start = '1') else
                      '0' when reset = '1' else 
                      '0' when (current_state = r_wc and reset = '0') else done_inout;
        done <= done_inout;
        next_state <= idle when (start = '0' or current_state = p_7) else
                      r_wc when (current_state = idle and done_inout = '-') else
                      r when (current_state = r_wc or (current_state = idle and done_inout = '0')) else
                      p_0 when (current_state = r) else
                      p_1 when (current_state = p_0) else
                      p_2 when (current_state = p_1) else
                      p_3 when (current_state = p_2) else
                      p_4 when (current_state = p_3) else
                      p_5 when (current_state = p_4) else
                      p_6 when (current_state = p_5) else
                      p_7 when (current_state = p_6);
        current_state <= next_state when (rising_edge(clock) and reset = '0') else
                         idle when reset = '1' else current_state;
        with current_state select
            u <= data(7) when p_0,
                 data(6) when p_1,
                 data(5) when p_2,
                 data(4) when p_3,
                 data(3) when p_4,
                 data(2) when p_5,
                 data(1) when p_6,
                 data(0) when p_7,
                 "-" when others;
        base_read <= base_read + 1 when (falling_edge(clock) and (current_state = r_wc or current_state = r) and reset = '0') else
                     0 when reset = '1' else base_read;
        base_write <= base_write +1 when (falling_edge(clock) and (current_state = p_3 or current_state = p_7) and reset = '0')else
                      1000 when reset = '1' else base_write;
        number_of_words <= to_integer(unsigned(data)) when current_state = r_wc else
                           number_of_words - 1 when (current_state = r and falling_edge(clk)) else number_of_words;
        mem_address <= std_logic_vector(to_unsigned(base_read,16)) when current_state = r else 
                       std_logic_vector(to_unsigned(base_write,16)) when (current_state = p_3 or current_state = p_7) else mem_address;
        mem_enable <= '1' when (current_state = r_wc or current_state = r or current_state = p_3 or current_state = p_7) else '0';
        mem_write <= '1' when (current_state = p_3 or current_state = p_7) else '0';
        controller_clk <= '1' when (rising_edge(clock) and current_state /= idle and current_state /= r_wc and current_state /= r) else
                          '0' when falling_edge(clock) else controller_clk;
     
end dataflow;


-- project interface declaration

library ieee;
use ieee.std_logic_1164.all;

entity project_reti_logiche is
    port(
        i_clk     : in std_logic;
        i_rst     : in std_logic;
        i_start   : in std_logic;
        i_data    : in std_logic_vector(7 downto 0);
        o_address : out std_logic_vector(15 downto 0);
        o_done    : out std_logic;
        o_en      : out std_logic;
        o_we      : out std_logic;
        o_data    : out std_logic_vector (7 downto 0)
    );
end project_reti_logiche;

architecture structural of project_reti_logiche is
    signal u : std_logic;
    signal controller_clk : std_logic;
    signal conv_encoder_out : std_logic_vector(1 downto 0);

    component convolutional_encoder is 
    port(
        u   : in std_logic;
        controller_clk : in std_logic;
        rst : in std_logic;
        pk : out std_logic_vector(1 downto 0)
    );
    end component;

    component controller is
        port(
            clock : in std_logic;
            reset : in std_logic;
            start : in std_logic;
            data : in std_logic_vector (7 downto 0);
            done : out std_logic := '-';
            mem_address : out std_logic_vector(15 downto 0);
            mem_enable : out std_logic;
            mem_write : out std_logic;
            u : out std_logic;
            controller_clk : out std_logic := '0'
        );
    end component;

    component string_managar is
        port(
        controller_clk : in std_logic;
        rst : in std_logic;
        bits : in std_logic_vector(1 downto 0);
        half_z : out std_logic_vector(7 downto 0)
        );
    end component;
    
    controller : controller
        port map(clock =>i_clk,reset=>i_rst,start =>i_start,data =>i_data, done =>o_done, mem_address =>o_address, mem_enable =>o_en, mem_write =>o_we, u =>u, controller_clk =>controller_clk);

    encoder : convolutional_encoder
        port map(u =>u,controller_clk =>controller_clk, rst =>i_rst, pk =>conv_encoder_out);

    string_manager : string_manager
        port map(controller_clk =>controller_clk, rst =>i_rst, bits =>conv_encoder_out, half_z =>o_data);

end structural;