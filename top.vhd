-- Mateusz Gabryel 181329 EiT 3
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use STD.STANDARD.ALL;

ENTITY top IS
    PORT ( clk_i : in STD_LOGIC;
           rst_i : in STD_LOGIC;
           led_o : out STD_LOGIC_VECTOR (3 downto 0)
           );
END top;

ARCHITECTURE Behavioral OF top IS

signal a: STD_LOGIC_VECTOR (3 downto 0):="0000";

BEGIN
PROCESS(clk_i,rst_i,a)
BEGIN

-- zanegowanie wartosci MSB i przesuniecie go na miejsce LSB
-- oraz przesuniecie wartosci innych bitow
-- 0000 => 0001 lub 0011=>0111
 
if(rst_i='1') then a<="0000";
    elsif (rising_edge(clk_i)) then 
        a(1) <= a(0);
        a(2) <= a(1);
        a(3) <= a(2);
        a(0) <= not a(3);   
END if;
END PROCESS;

-- przepisanie wynikow na diody led

led_o(3)<=a(3);
led_o(2)<=a(2);
led_o(1)<=a(1);
led_o(0)<=a(0);

END Behavioral;