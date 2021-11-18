-- Mateusz Gabryel 181329 EiT 3
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY tb IS
END tb;

ARCHITECTURE Behavioral OF tb IS

COMPONENT top IS
     PORT ( clk_i : in STD_LOGIC;
           rst_i : in STD_LOGIC;
           led_o : out STD_LOGIC_VECTOR (3 downto 0)
           );
END COMPONENT top;

signal clk_i : STD_LOGIC :='0';
signal rst_i : STD_LOGIC :='0';
signal led_o : STD_LOGIC_VECTOR (3 downto 0);
constant PERIOD : TIME := 200ms;

BEGIN
    uut: top PORT MAP (
        clk_i => clk_i,
        rst_i => rst_i,
        led_o => led_o
    );
    
clk_i <= not clk_i after PERIOD/2; -- realizacja prostego zegara

tb: PROCESS
    BEGIN
        rst_i <= '1'; -- I reset na poczatku
        wait for 200ms;
        rst_i <= '0'; -- wylaczenie resetu
        wait for 400ms;
        rst_i <= '1'; -- II reset w trakcie
        wait for 200ms;
        rst_i <= '0'; -- wylaczenie resetu
        wait;
END PROCESS;
END Behavioral;