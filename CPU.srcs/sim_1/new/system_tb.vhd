
USE STD.ENV.FINISH;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY system_tb IS
END system_tb;

ARCHITECTURE Behavioral OF system_tb IS
    COMPONENT system IS
        PORT (
            clk_in : IN STD_LOGIC;
            reset : IN STD_LOGIC;
            trace : IN STD_LOGIC;
            pulse : IN STD_LOGIC;
            ac_debug : OUT UNSIGNED(0 TO 11)
        );
    END COMPONENT;

    CONSTANT clk_period : TIME := 10 ns;
    SIGNAL clk, reset, trace, pulse : STD_LOGIC := '0';
    SIGNAL ac_debug : UNSIGNED(0 TO 11);
BEGIN
    DUT : system
    PORT MAP(
        clk_in => clk,
        trace => trace,
        pulse => pulse,
        ac_debug => ac_debug,
        reset => reset);

    clk_process : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR clk_period/2;
        clk <= '1';
        WAIT FOR clk_period/2;
    END PROCESS;

    --pulse_process : PROCESS
    --BEGIN
    --    pulse <= '0';
    --    WAIT FOR clk_period * 32;
    --    pulse <= '1';
    --    WAIT FOR clk_period * 32; --Run it for at least 14 us (with the program in memory, if you use other add more or less time)
    --END PROCESS;

    reset_process : PROCESS
    BEGIN
        WAIT FOR 10ns;
        reset <= '1';
        WAIT FOR 640ns;
        reset <= '0';
        WAIT FOR 2us;
        FINISH;
    END PROCESS;
END Behavioral;