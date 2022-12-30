

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY syncregister IS
    GENERIC (

        N : INTEGER := 12

    );
    PORT (
        clk : IN STD_LOGIC;
        ld : IN STD_LOGIC;
        clr : IN STD_LOGIC;
        data : IN UNSIGNED(0 TO (N - 1));
        ex : OUT UNSIGNED(0 TO (N - 1))

    );
END syncregister;

ARCHITECTURE Behavioral OF syncregister IS

    SIGNAL pex : UNSIGNED(0 TO (N - 1));

BEGIN

    sync : PROCESS (clk, ld, clr, data)
    BEGIN

        IF CLR = '1' THEN
            pex(0 TO (N - 1)) <= (OTHERS => '0');

        ELSE
            IF (rising_edge(clk) AND ld = '1') THEN

                pex <= data;

            END IF;
        END IF;

    END PROCESS;

    ex <= pex;

END Behavioral;