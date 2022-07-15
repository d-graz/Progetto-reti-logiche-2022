-- Progetto reti logiche 2022
-- Davide Grazzani, 10660259
------------------------------


-- library declaration
library ieee;
use ieee.std_logic_1164.all;


--Flip Flop type D 
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
                output <= 0;
            elsif rising_edge(clk) then
                output <= input;
            end if;
        end process;
end behavioral;

architecture dataflow of FF_D is
    begin
        output <= '0' when rst = '1' else
                  input when rising_edge(clk) else
                  output
end dataflow;
    

-- Convolutional encoder with 1/2 transmission ratio
entity convolutional_encoder is 
    port(
        u   : in std_logic;
        clk : in std_logic;
        rst : in std_logic;
        p1k : out std_logic;
        p2k : out std_logic
    );
end convolutional_encoder;

architecture structural of convolutional_encoder is
    signal FF1_signal : std_logic := '0';
    signal FF2_signal : std_logic := '0';

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
            port map(input => u,clk => clk,rst => rst, output => FF1_signal);
        
        FF2 : FF_D
            port map(input => FF1_signal,clk => clk,rst => rst, output => FF2_signal);
        
        -- domanda : bisogna resettare il segnale in uscita dal covolutore -> per ora non implemento
        p1k <= u xor FF2_signal when falling_edge(ckl) else
               p1k;
        p2k <= u xor FF1_signal xor FF2_signal when falling_edge(clk) else
               p2k;
end structural;

-- project interface declaration
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
