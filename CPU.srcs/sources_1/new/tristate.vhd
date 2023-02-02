

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY tristate IS
    GENERIC (
        TYPE T;
        default_value : T);
    PORT (
        enable : IN STD_LOGIC;
        data : IN T;
        output : OUT T);
END tristate;

ARCHITECTURE Behavioral OF tristate IS

BEGIN
    output <= data WHEN enable = '1' ELSE
        default_value;
END Behavioral;