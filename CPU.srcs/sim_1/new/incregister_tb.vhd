LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE STD.ENV.FINISH;

ENTITY incregister_tb IS
END incregister_tb;

ARCHITECTURE Behavioral OF incregister_tb IS

    COMPONENT incregister
        GENERIC (
            N : INTEGER := 12);
        PORT (
            clk : IN STD_LOGIC;
            ld : IN STD_LOGIC;
            clr : IN STD_LOGIC;
            inc : IN STD_LOGIC;
            data : IN UNSIGNED(0 TO (N - 1));
            output : OUT UNSIGNED(0 TO (N - 1)));
    END COMPONENT;

    CONSTANT clk_period : TIME := 10 ns;
    CONSTANT bits : INTEGER := 12;
    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL ld : STD_LOGIC := '0';
    SIGNAL clr : STD_LOGIC := '0';
    SIGNAL inc : STD_LOGIC := '0';
    SIGNAL data : UNSIGNED(0 TO (bits - 1)) := to_unsigned(8, bits);
    SIGNAL output : UNSIGNED(0 TO (bits - 1));
BEGIN
    DUT : incregister

    GENERIC MAP(
        N => bits)
    PORT MAP(
        clk => clk,
        ld => ld,
        clr => clr,
        inc => inc,
        data => data,
        output => output);

    clk_process : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR clk_period/2;
        clk <= '1';
        WAIT FOR clk_period/2;
    END PROCESS;

    simregister : PROCESS
    BEGIN
        ld <= '1';
        WAIT FOR 20ns;
        ld <= '0';
        WAIT FOR 20ns;
        inc <= '1';
        WAIT FOR 40ns;
        inc <= '0';
        WAIT FOR 20ns;
        clr <= '1';
        WAIT FOR 10ns;
        ld <= '1';
        clr <= '0';
        WAIT FOR 10ns;
        ld <= '0';
        WAIT FOR 10ns;
        FINISH;
    END PROCESS;

END Behavioral;