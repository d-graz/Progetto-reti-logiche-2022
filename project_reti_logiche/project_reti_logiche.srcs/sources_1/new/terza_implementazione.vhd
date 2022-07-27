------------------------------
-- Progetto reti logiche 2022
-- Davide Grazzani, 10660259
------------------------------


--Flip Flop type D

library ieee;
use ieee.std_logic_1164.all;

entity FF_D is
    port(
        input    : in std_logic;
        clock    : in std_logic;
        reset    : in std_logic;
        enable   : in std_logic;
        output   : out std_logic
    );
end FF_D;

architecture dataflow of FF_D is
    begin
        output <= '0' when reset = '1' else
                  input when (rising_edge(clock) and enable = '1');
end dataflow;
    

-- Convolutional encoder with 1/2 transmission ratio

library ieee;
use ieee.std_logic_1164.all;

entity convolutional_encoder is 
    port(
        u      : in std_logic;
        clock  : in std_logic;
        reset  : in std_logic;
        enable : in std_logic;
        pk     : out std_logic_vector(1 downto 0)
    );
end convolutional_encoder;

architecture structural of convolutional_encoder is
    signal FF1_signal : std_logic := '0';
    signal FF2_signal : std_logic := '0';
    signal p1k : std_logic;
    signal p2k : std_logic;

    component FF_D is
        port(
            input    : in std_logic;
            clock    : in std_logic;
            reset    : in std_logic;
            enable   : in std_logic;
            output   : out std_logic
        );
    end component;

    begin
        FF1 : FF_D
            port map(input => u, clock => clock, reset => reset, enable => enable, output => FF1_signal);
        FF2 : FF_D
            port map(input => FF1_signal, clock => clock, reset => reset, enable => enable, output => FF2_signal);
        p1k <= u xor FF2_signal;
        p2k <= u xor FF1_signal xor FF2_signal;
        pk <= p1k & p2k;

end structural;


-- string concatenator

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity string_manager is
    port(
    clock  : in std_logic;
    reset  : in std_logic;
    enable : in std_logic;
    bits   : in std_logic_vector(1 downto 0);
    half_z : out std_logic_vector(7 downto 0)
    );
end string_manager;

architecture dataflow of string_manager is
    signal half_z_inout : std_logic_vector(7 downto 0) := (others => '0');
    signal half_z_inout_shifter : std_logic_vector(7 downto 0) := (others => '0');

    begin
        half_z_inout_shifter <= half_z_inout(5 downto 0)& "00" when (rising_edge(clock) and enable = '1');
        half_z_inout <= half_z_inout_shifter(7 downto 2) & bits when reset = '0' else
                        "00000000" when reset = '1';
        half_z <= half_z_inout;
end dataflow;
    


-- controller to iterate between states

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is
    port(
        clock            : in std_logic;
        reset            : in std_logic;
        start            : in std_logic;
        data             : in std_logic_vector (7 downto 0);
        done             : out std_logic := '-';
        mem_address      : out std_logic_vector(15 downto 0);
        mem_enable       : out std_logic;
        mem_write        : out std_logic;
        u                : out std_logic;
        component_enable : out std_logic := '0';
        component_reset  : out std_logic := '0'
    );
end controller;

architecture dataflow of controller is
    type state_type is (idle,r_wc,r,p_0,p_1,p_2,p_3,p_4,p_5,p_6,p_7,d);
    signal next_state : state_type;
    signal current_state : state_type := idle;
    signal number_of_words : unsigned(7 downto 0) := (others => '0');
    signal base_read : unsigned(7 downto 0) := (others => '0');
    signal base_write : unsigned(10 downto 0) := to_unsigned(1000,11);
    signal mem_inout : std_logic_vector(7 downto 0);
    
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
        --todo sincronizzare i segnali di mem address1  e numero di parole
        base_read <= (others =>'0') when (reset = '1' or start = '0') else
                     base_read + 1 when (falling_edge(clock) and current_state = r and reset = '0');
        base_write <= to_unsigned(1000,11) when (reset = '1' or start = '0') else 
                      base_write +1 when (falling_edge(clock) and (current_state = p_4 or current_state = d) and reset = '0');
        number_of_words <= unsigned(data) when (current_state = r_wc) else
                           (others => '0') when reset = '1' else 
                           number_of_words - 1 when (current_state = r and falling_edge(clock));
        mem_address <= "00000000"&std_logic_vector(base_read) when (next_state = r_wc or current_state = r) else 
                       "00000"&std_logic_vector(base_write) when (current_state = p_3 or current_state = p_7);
        mem_enable <= '1' when ((current_state = idle and next_state = r_wc) or current_state = r_wc or current_state = r or current_state = p_3 or current_state = p_7) else '0';
        mem_write <= '1' when (current_state = p_3 or current_state = p_7) else '0';
        component_enable <= '1' when (current_state = p_0 and clock = '0') else
                            '0' when (current_state = d and clock = '0');
        component_reset <= '1' when (reset = '1' or start = '0') else '0';
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
    signal component_enable : std_logic;
    signal component_reset : std_logic;
    signal convolutional_encoder_out : std_logic_vector(1 downto 0);

    component convolutional_encoder is 
        port(
            u      : in std_logic;
            clock  : in std_logic;
            reset  : in std_logic;
            enable : in std_logic;
            pk     : out std_logic_vector(1 downto 0)
        );
    end component;

    component controller is
        port(
            clock            : in std_logic;
            reset            : in std_logic;
            start            : in std_logic;
            data             : in std_logic_vector (7 downto 0);
            done             : out std_logic := '-';
            mem_address      : out std_logic_vector(15 downto 0);
            mem_enable       : out std_logic;
            mem_write        : out std_logic;
            u                : out std_logic;
            component_enable : out std_logic := '0';
            component_reset  : out std_logic := '0'
        );
    end component;

    component string_manager is
        port(
            clock  : in std_logic;
            reset  : in std_logic;
            enable : in std_logic;
            bits   : in std_logic_vector(1 downto 0);
            half_z : out std_logic_vector(7 downto 0)
        );
    end component;
    
    begin
    
        cont : controller
            port map(clock => i_clk, reset => i_rst, start => i_start, data => i_data, done => o_done, mem_address => o_address, mem_enable => o_en, mem_write => o_we, u => u, component_enable => component_enable, component_reset => component_reset);

        encoder : convolutional_encoder
            port map(u =>u,clock =>i_clk, reset =>component_reset, enable => component_enable, pk =>convolutional_encoder_out);

        str_mng: string_manager
            port map(clock =>i_clk, reset => component_reset, enable => component_enable, bits =>convolutional_encoder_out, half_z =>o_data);

end structural;
