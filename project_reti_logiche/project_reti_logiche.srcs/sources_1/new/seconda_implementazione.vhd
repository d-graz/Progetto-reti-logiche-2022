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
        clock    : in std_logic;
        reset    : in std_logic;
        output : out std_logic
    );
end FF_D;

architecture dataflow of FF_D is
    begin
        output <= '0' when reset = '1' else
                  input when falling_edge(clock);
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
        clock    : in std_logic;
        reset    : in std_logic;
        output : out std_logic
    );
    end component;

    begin
        FF1 : FF_D
            port map(input => u,clock => controller_clk,reset => rst, output => FF1_signal);
        FF2 : FF_D
            port map(input => FF1_signal,clock => controller_clk,reset => rst, output => FF2_signal);
        p1k <= u xor FF2_signal when controller_clk = '1' else p1k;
        p2k <= u xor FF1_signal xor FF2_signal when controller_clk = '1' else p2k;
        pk <= p1k & p2k;

end structural;


-- string concatenator

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity string_manager is
    port(
    controller_clk : in std_logic;
    rst : in std_logic;
    bits : in std_logic_vector(1 downto 0);
    half_z : out std_logic_vector(7 downto 0)
    );
end string_manager;

architecture dataflow of string_manager is
    signal half_z_inout : std_logic_vector(7 downto 0) := (others => '0');
    signal counter : unsigned(1 downto 0) := "00";
    signal next_counter : unsigned(1 downto 0) := "00";

    begin
        --counter <= counter - "01" when (rising_edge(controller_clk) and counter /= "00" and rst = '0') else
        --           "11" when(rising_edge(controller_clk) and counter = "00") else
        --           "00" when rst = '1' else counter;
        with counter select
            next_counter <= "10" when "11",
                            "01" when "10",
                            "00" when "01",
                            "11" when "00",
                            "00" when others;
        counter <= "00" when rst = '1' else
                    next_counter when (rising_edge(controller_clk) and rst = '0');
        half_z_inout <= bits & half_z_inout(5 downto 0) when (counter = "11" and rst = '0' and controller_clk = '1') else
                        half_z_inout(7 downto 6) & bits & half_z_inout(3 downto 0) when (counter = "10" and rst = '0' and controller_clk = '1') else
                        half_z_inout(7 downto 4) & bits & half_z_inout(1 downto 0) when (counter = "01" and rst = '0' and controller_clk = '1') else
                        half_z_inout(7 downto 2) & bits when (counter = "00" and rst = '0' and controller_clk = '1') else
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
        controller_clk : out std_logic := '0';
        controller_rst : out std_logic := '0'
    );
end controller;

architecture dataflow of controller is
    type state_type is (idle,r_wc,r,p_0,p_1,p_2,p_3,p_4,p_5,p_6,p_7,d);
    signal next_state : state_type;
    signal current_state : state_type := idle;
    signal number_of_words : integer := -1;
    signal base_read : integer := 0;
    signal base_write : integer := 1000;
    signal mem_inout : std_logic_vector(7 downto 0);
    signal component_enable : std_logic :='0';
    
    begin
        done <= '1' when (current_state = d and number_of_words = 0 and reset = '0' and start = '1') else
                      '0' when (reset = '1' or start = '0');
        mem_inout <= data when (current_state = p_0 and clock = '1') else mem_inout;
        next_state <= idle when start = '0' else
                      r_wc when (current_state = idle and start = '1') else
                      r when ((current_state = r_wc or current_state = d) and number_of_words /= 0) else
                      p_0 when current_state = r else
                      p_1 when current_state = p_0 else
                      p_2 when current_state = p_1 else
                      p_3 when current_state = p_2 else
                      p_4 when current_state = p_3 else
                      p_5 when current_state = p_4 else
                      p_6 when current_state = p_5 else
                      p_7 when current_state = p_6 else
                      d when (current_state = p_7 or (current_state = r_wc and number_of_words = 0)) ;
        current_state <= idle when reset = '1' else
                         next_state when (rising_edge(clock) and reset = '0');
        with current_state select
            u <= mem_inout(7) when p_0,
                 mem_inout(6) when p_1,
                 mem_inout(5) when p_2,
                 mem_inout(4) when p_3,
                 mem_inout(3) when p_4,
                 mem_inout(2) when p_5,
                 mem_inout(1) when p_6,
                 mem_inout(0) when p_7,
                 '0' when others;
        base_read <= 0 when (reset = '1' or start = '0') else
                     base_read + 1 when (falling_edge(clock) and current_state = r and reset = '0');
        base_write <= 1000 when (reset = '1' or start = '0') else 
                      base_write +1 when (falling_edge(clock) and (current_state = p_4 or current_state = d) and reset = '0');
        number_of_words <= to_integer(unsigned(data)) when (current_state = r_wc) else
                           -1 when reset = '1' else 
                           number_of_words - 1 when (current_state = r and falling_edge(clock));
        mem_address <= std_logic_vector(to_unsigned(base_read,16)) when (next_state = r_wc or current_state = r) else 
                       std_logic_vector(to_unsigned(base_write,16)) when (current_state = p_3 or current_state = p_7);
        mem_enable <= '1' when ((current_state = idle and next_state = r_wc) or current_state = r_wc or current_state = r or current_state = p_3 or current_state = p_7) else '0';
        mem_write <= '1' when (current_state = p_3 or current_state = p_7) else '0';
        controller_clk <= '0' when component_enable = '0' else
                          '1' when (rising_edge(clock) and component_enable = '1');
        controller_rst <= '1' when (reset = '1' or start = '0') else '0';
        component_enable <= '1' when (component_enable = '0' and (next_state /= idle and next_state /= r_wc and next_state /= r and next_state /= d)) else 
                            '0' when falling_edge(clock);
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
    signal controller_rst : std_logic;
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
            controller_clk : out std_logic := '0';
            controller_rst : out std_logic := '0'
        );
    end component;

    component string_manager is
        port(
        controller_clk : in std_logic;
        rst : in std_logic;
        bits : in std_logic_vector(1 downto 0);
        half_z : out std_logic_vector(7 downto 0)
        );
    end component;
    
    begin
    
        cont : controller
            port map(clock =>i_clk,reset=>i_rst,start =>i_start,data =>i_data, done =>o_done, mem_address =>o_address, mem_enable =>o_en, mem_write =>o_we, u =>u, controller_clk =>controller_clk,controller_rst => controller_rst);

        encoder : convolutional_encoder
            port map(u =>u,controller_clk =>controller_clk, rst =>controller_rst, pk =>conv_encoder_out);

        str_mng: string_manager
            port map(controller_clk =>controller_clk, rst =>controller_rst, bits =>conv_encoder_out, half_z =>o_data);

end structural;
