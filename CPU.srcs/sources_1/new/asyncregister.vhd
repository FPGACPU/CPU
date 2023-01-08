LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY asyncregister IS
    GENERIC (
        N : INTEGER := 12);
    PORT (
        ld : IN STD_LOGIC;
        clr : IN STD_LOGIC;
        data : IN UNSIGNED(0 TO (N - 1));
        output : OUT UNSIGNED(0 TO (N - 1)));
END asyncregister;

ARCHITECTURE Behavioral OF asyncregister IS

    SIGNAL output_reg : UNSIGNED(0 TO (N - 1));
BEGIN

    sync : PROCESS (ld, clr, data)
    BEGIN
        IF CLR = '1' THEN
            output_reg(0 TO (N - 1)) <= (OTHERS => '0');
        ELSIF (ld = '1') THEN
            output_reg <= data;
        END IF;
    END PROCESS;

    output <= output_reg;

END Behavioral;