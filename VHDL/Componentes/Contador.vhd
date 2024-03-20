library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity COUNTER is
    Port ( rst,clk,up_dwn : in std_logic;
           pwm_en : in std_logic;
           o: out std_logic_vector(9 downto 0));
end COUNTER;

architecture ckt of COUNTER is
    signal count : std_logic_vector(9 downto 0);
    
    begin
        process(rst,clk)
        begin
            if (rst = '1') then 
            count <= "0000000000";
            elsif (clk'event and clk = '1') then
                if (up_dwn = '0' and pwm_en = '1') then 
                    count <= count - 1;
                elsif (up_dwn = '1' and pwm_en = '1') then
                    count <= count + 1;
                end if;
            end if;
         
        end process;
    
    o <= count;

end ckt;