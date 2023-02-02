LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE STD.ENV.FINISH;

ENTITY cpu_tb IS
END cpu_tb;

ARCHITECTURE Behavioral OF cpu_tb IS
    COMPONENT cpu
        PORT (
            clk : IN STD_LOGIC;
            lec, esc : OUT STD_LOGIC;
            data_bus : INOUT STD_LOGIC_VECTOR(0 TO 11);
            addr_bus : OUT STD_LOGIC_VECTOR(0 TO 8);
            ac_debug : OUT UNSIGNED(0 TO 11);
            reset : IN STD_LOGIC
        );
    END COMPONENT;

    CONSTANT clk_period : TIME := 10 ns;
    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL lec : STD_LOGIC;
    SIGNAL esc : STD_LOGIC;
    SIGNAL data_bus : STD_LOGIC_VECTOR(0 TO 11) := "000000000000";
    SIGNAL addr_bus : STD_LOGIC_VECTOR(0 TO 8);
    SIGNAL ac_debug : UNSIGNED(0 TO 11);
    SIGNAL reset : STD_LOGIC := '0';

BEGIN
    DUT : cpu
    PORT MAP(
        clk => NOT clk,
        lec => lec,
        esc => esc,
        data_bus => data_bus,
        addr_bus => addr_bus,
        ac_debug => ac_debug,
        reset => reset);

    clk_process : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR clk_period/2;
        clk <= '1';
        WAIT FOR clk_period/2;
    END PROCESS;

    simcpu : PROCESS
    BEGIN
        reset <= '1';
        WAIT FOR 40 ns;
        reset <= '0';
        data_bus <= "010000000100";
        WAIT FOR 40 ns;
        data_bus <= "000000000010";
        WAIT FOR 50 ns;
        reset <= '1';
        WAIT FOR 60 ns;
        reset <= '0';
        data_bus <= "111000000000";
        WAIT FOR 70 ns;

        FINISH;
    END PROCESS;

END Behavioral;