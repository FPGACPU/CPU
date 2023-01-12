LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE STD.ENV.FINISH;

ENTITY tristate_tb IS
END tristate_tb;

ARCHITECTURE Behavioral OF tristate_tb IS
    COMPONENT tristate
        GENERIC (
            TYPE T;
            default_value : T);
        PORT (
            ex : IN STD_LOGIC;
            data : IN T;
            output : OUT T);
    END COMPONENT;

    CONSTANT bits : INTEGER := 12;
    SUBTYPE datatype IS STD_LOGIC_VECTOR(0 TO (bits - 1));
    SIGNAL ex : STD_LOGIC := '0';
    SIGNAL data : datatype := STD_LOGIC_VECTOR(to_unsigned(9, bits));
    SIGNAL output : datatype;

BEGIN
    DUT : tristate
    GENERIC MAP(
        T => datatype,
        default_value => (OTHERS => 'Z'))
    PORT MAP(
        ex => ex,
        data => data,
        output => output);

    simtristate : PROCESS
    BEGIN
        ex <= '1';
        WAIT FOR 30ns;
        ex <= '0';
        WAIT FOR 10ns;
        FINISH;
    END PROCESS;

END Behavioral;