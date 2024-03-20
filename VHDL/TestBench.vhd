library ieee;
use ieee.std_logic_1164.all;

entity TESTBENCH is
end TESTBENCH;

architecture ckt of TESTBENCH is

    component COUNTER is
        Port ( rst,clk,up_dwn : in std_logic;
               pwm_en : in std_logic;
               o: out std_logic_vector(9 downto 0));
    end component; 

    signal clk: std_logic := '0'; --CLOCK
    signal pwm_in: std_logic := '0'; --CLOCK
    
    signal rst_in : std_logic := '0';
    signal up_dwn_in : std_logic := '1';

    signal output_cnt : std_logic_vector (9 downto 0);


    begin

        CLOCK : clk <=  '1' after 1 ms when clk = '0' else
        			'0' after 1 ms when clk = '1';

        PWM : pwm_in <= '1' after 950 ms when pwm_in = '0' else
                     '0' after 50 ms when pwm_in = '1';

        IP : COUNTER port map (rst=>rst_in, clk=>clk, up_dwn=>up_dwn_in, pwm_en=>pwm_in, o=>output_cnt);
        
    process
    begin

        rst_in <= '1';
        wait for 1 ms;

        rst_in <= '0';
        wait for 1 ms;

        wait;
    end process;
end ckt;