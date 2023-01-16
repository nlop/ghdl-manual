library IEEE;
use IEEE.std_logic_1164.all;

entity Clock is 
    port(CLK :   out STD_LOGIC);
end Clock;

architecture Behavioral of Clock is
    constant P : time := 200 ns;
begin
    process begin
        CLK <= '0';
        wait for P/2;
        CLK <= '1';
        wait for P/2;
    end process;
end Behavioral;
