LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY syncregister IS
    GENERIC (
        TYPE T;
        CLR_VALUE : T);
    PORT (
        clk : IN STD_LOGIC;
        ld : IN STD_LOGIC;
        clr : IN STD_LOGIC;
        data : IN T;
        output : OUT T);
END syncregister;

ARCHITECTURE Behavioral OF syncregister IS
    SIGNAL output_reg : T;

BEGIN
    sync : PROCESS (clk, ld, clr, data)
    BEGIN
        IF clr = '1' THEN
            output_reg <= CLR_VALUE;
        ELSIF (falling_edge(clk) AND ld = '1') THEN
            output_reg <= data;
        END IF;
    END PROCESS;

    output <= output_reg;
END Behavioral;