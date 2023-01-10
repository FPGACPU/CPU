LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY clk_divider IS
    GENERIC (Divider : INTEGER := 4); --Divider 2^(N-1)
    PORT (
        clk_in : IN STD_LOGIC;
        trace : IN STD_LOGIC; --Synchronous activation
        pulse : IN STD_LOGIC;
        clk_out : OUT STD_LOGIC);
END clk_divider;

ARCHITECTURE Behavioral OF clk_divider IS
    SIGNAL count : unsigned(0 TO Divider - 1) := to_unsigned(0, Divider);

BEGIN
    clk_out <= STD_LOGIC(count(0)) OR (trace AND pulse);

    sync : PROCESS (clk_in)
        VARIABLE trace_start : BOOLEAN;
    BEGIN
        IF (trace = '1' AND (count = to_unsigned(0, Divider))) THEN
            trace_start := True;
        ELSE
            trace_start := False;
        END IF;

        IF falling_edge(clk_in) AND NOT trace_start THEN
            count <= count + 1;
        END IF;
    END PROCESS;

END Behavioral;