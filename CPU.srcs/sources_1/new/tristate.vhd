

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY tristate IS
    GENERIC (N : INTEGER := 12);
    PORT (
        ex : IN STD_LOGIC;
        data : IN STD_LOGIC_VECTOR(0 TO (N - 1));
        output : OUT STD_LOGIC_VECTOR(0 TO (N - 1)));
END tristate;

ARCHITECTURE Behavioral OF tristate IS

BEGIN

    output(0 TO (N - 1)) <= (OTHERS => 'Z') WHEN ex = '0' ELSE
    data;
END Behavioral;