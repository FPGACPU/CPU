

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY syncregister IS
    GENERIC (
        N : INTEGER := 12);
    PORT (
        clk : IN STD_LOGIC;
        ld : IN STD_LOGIC;
        clr : IN STD_LOGIC;
        data : IN UNSIGNED(0 TO (N - 1));
        output : OUT UNSIGNED(0 TO (N - 1)));
END syncregister;

ARCHITECTURE Behavioral OF syncregister IS

    SIGNAL output_reg : UNSIGNED(0 TO (N - 1));
BEGIN

    sync : PROCESS (clk, ld, clr, data)
    BEGIN
        IF clr = '1' THEN
            output_reg(0 TO (N - 1)) <= (OTHERS => '0');
        ELSIF (falling_edge(clk) AND ld = '1') THEN
            output_reg <= data;
        END IF;
    END PROCESS;

    output <= output_reg;

END Behavioral;