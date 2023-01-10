LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY clk_divider IS
    GENERIC (N : INTEGER := 4); --Divider 2^(N-1)
    PORT (
        clk_in : IN STD_LOGIC;
        clk_out : OUT STD_LOGIC);
END clk_divider;

ARCHITECTURE Behavioral OF clk_divider IS
    SIGNAL count, new_count : unsigned(0 TO N - 1) := to_unsigned(0, N);

BEGIN
    new_count <= count + 1;
    clk_out <= STD_LOGIC(count(0));

    sync : PROCESS (clk_in)
    BEGIN
        IF falling_edge(clk_in) THEN
            count <= new_count;
        END IF;
    END PROCESS;

END Behavioral;