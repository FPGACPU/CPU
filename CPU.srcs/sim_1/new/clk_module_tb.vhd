LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE STD.ENV.FINISH;

ENTITY clk_module_tb IS
END clk_module_tb;

ARCHITECTURE Behavioral OF clk_module_tb IS

    COMPONENT clk_module IS
        GENERIC (Division : INTEGER := 4); -- Division 2^(N - 1)
        PORT (
            clk_in : IN STD_LOGIC;
            trace : IN STD_LOGIC; --Synchronous activation
            pulse : IN STD_LOGIC;
            clk_out : OUT STD_LOGIC);
    END COMPONENT;

    SIGNAL clk_in, trace, pulse : STD_LOGIC := '0';
    SIGNAL clk_out : STD_LOGIC;
    CONSTANT clk_period : TIME := 10ns;

BEGIN
    DUT : clk_module
    PORT MAP(
        clk_in => clk_in,
        trace => trace,
        pulse => pulse,
        clk_out => clk_out);

    clk : PROCESS
    BEGIN
        clk_in <= '0';
        WAIT FOR clk_period/2;
        clk_in <= '1';
        WAIT FOR clk_period/2;
    END PROCESS;

    clk_module_sim : PROCESS
    BEGIN
        WAIT FOR 170ns;
        pulse <= '1';
        WAIT FOR 80ns;
        pulse <= '0';
        trace <= '1';
        WAIT FOR 70ns;
        pulse <= '1';
        WAIT FOR 6ns;
        pulse <= '0';
        trace <= '0';
        WAIT FOR 80ns;

    END PROCESS;

END Behavioral;