LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE STD.ENV.FINISH;

ENTITY tristate_tb IS
END tristate_tb;

ARCHITECTURE Behavioral OF tristate_tb IS
    COMPONENT tristate
        GENERIC (N : INTEGER := 12);
        PORT (
            ex : IN STD_LOGIC;
            data : IN STD_LOGIC_VECTOR(0 TO (N - 1));
            output : OUT STD_LOGIC_VECTOR(0 TO (N - 1)));
    END COMPONENT;

    CONSTANT bits : INTEGER := 12;
    SIGNAL ex : STD_LOGIC := '0';
    SIGNAL data : STD_LOGIC_VECTOR(0 TO (bits - 1)) := STD_LOGIC_VECTOR(to_unsigned(9, bits));
    SIGNAL output : STD_LOGIC_VECTOR(0 TO (bits - 1));

BEGIN
    DUT : tristate
    GENERIC MAP(N => bits)
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