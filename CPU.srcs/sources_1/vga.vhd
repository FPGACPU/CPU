
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY vga IS
    GENERIC (N : INTEGER := 4); --Probably unnecessary as generic
    PORT (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        horizontal_sync : OUT STD_LOGIC;
        vertical_sync : OUT STD_LOGIC;
        red : OUT unsigned(N - 1 DOWNTO 0);
        blue : OUT unsigned(N - 1 DOWNTO 0);
        green : OUT unsigned(N - 1 DOWNTO 0));
END vga;

ARCHITECTURE Behavioral OF vga IS

BEGIN

END Behavioral;