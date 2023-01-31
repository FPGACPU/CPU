LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY clk_module IS
    GENERIC (
        Division : INTEGER := 4;
        PulseBits : INTEGER := 24); --Division 2^(N-1)
    PORT (
        clk_in : IN STD_LOGIC;
        trace : IN STD_LOGIC; --Synchronous activation
        pulse : IN STD_LOGIC;
        clk_out : OUT STD_LOGIC);
END clk_module;

ARCHITECTURE Behavioral OF clk_module IS
    SIGNAL count : unsigned(0 TO Division - 1) := to_unsigned(0, Division);
    SIGNAL pulse_timer : unsigned(0 TO PulseBits) := to_unsigned(0, PulseBits);
BEGIN
    PROCESS (count, trace, pulse_timer)
    BEGIN
        IF (count(0) = '1') OR ((trace = '1') AND (NOT (pulse_timer = 0))) THEN
            clk_out <= '1';
        ELSE
            clk_out <= '0';
        END IF;
    END PROCESS;
    

    counter : PROCESS (clk_in)
        VARIABLE trace_start : BOOLEAN;
    BEGIN
        trace_start := trace = '1' AND (count(0) = '0');

        IF falling_edge(clk_in) AND NOT trace_start THEN
            count <= count + 1;
        END IF;
    END PROCESS;

    pulse_counter : PROCESS (clk_in, pulse, pulse_timer)
    BEGIN
        IF pulse = '1' THEN
            pulse_timer <= (OTHERS => '1');
        END IF;
        IF falling_edge(clk_in) AND NOT (pulse_timer = 0) THEN
            pulse_timer <= pulse_timer - 1;
        END IF;
    END PROCESS;

END Behavioral;