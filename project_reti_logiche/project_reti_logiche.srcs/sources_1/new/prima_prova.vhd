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
        convolutional_encoder_index : out std_logic_vector(2 downto 0);
        done : out std_logic := '0';
        mem_address : out std_logic_vector(15 downto 0);
        mem_enable : out std_logic;
        mem_write : out std_logic;
        u : out std_logic
    );
end controller;

architecture dataflow of controller is
    type state_type is (read_wc,read,calculate,write);
    constant bit : unsigned := "001";
    signal next_state : state_type;
    signal current_state : state_type := read_wc;
    signal convolutional_encoder_inout : std_logic_vector(2 downto 0) := "111";
    signal number_of_words : integer;
    signal base_read : integer := 0;
    signal base_write : integer := 1000;
    
    begin
        done <= '1' when (number_of_words = 0 and current_state = read) else
                '0' when reset = '1' else '0';
        -- todo fixare il next state in caso di done per smettere di eseguire tutto, ricontrollare il ciclo degli stati
        next_state <= read when current_state = write else
                      read when (current_state = read_wc and start = '1') else
                      calculate when current_state = read else
                      write when (current_state = calculate and convolutional_encoder_inout = "000") else
                      read_wc when reset = '1' else current_state;
        current_state <= next_state when rising_edge(clock) else
                         read_wc when reset = '1' else current_state;
        convolutional_encoder_inout <= std_logic_vector(unsigned(convolutional_encoder_inout) - bit) when (current_state = calculate and falling_edge(clock)) else convolutional_encoder_inout;
        convolutional_encoder_index <= convolutional_encoder_inout;
        number_of_words <= number_of_words -1 when (current_state = read and falling_edge(clock)) else number_of_words;
        base_read <= base_read+1 when ((current_state = read or current_state = read_wc) and falling_edge(clock)) else
                     0 when reset = '1' else base_read;
        base_write <= base_write+1 when (((current_state = calculate and convolutional_encoder_inout = "000") or current_state = write) and falling_edge(clock)) else
                      1000 when reset = '1' else base_write;
        mem_enable <= '1' when (current_state = read or (current_state = read_wc and start = '1') or current_state = write or ( current_state = calculate and convolutional_encoder_inout = "000")) else '0';
        mem_write <= '1' when ((current_state = calculate and convolutional_encoder_inout = "000") or current_state = write) else '0';
        -- todo : gestire data e base address
        u <= data(to_integer(unsigned(convolutional_encoder_inout)));
        mem_address <= std_logic_vector(to_unsigned(base_read,16)) when (current_state = read_wc or current_state = read) else
                       std_logic_vector(to_unsigned(base_write,16)) when (current_state = write or (current_state = calculate and convolutional_encoder_inout = "111"));
     
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
end structural;