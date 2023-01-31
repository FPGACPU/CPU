LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE STD.ENV.FINISH;

ENTITY syncregister_tb IS
END syncregister_tb;

ARCHITECTURE Behavioral OF syncregister_tb IS
    COMPONENT syncregister
        GENERIC (
            TYPE T;
            CLR_VALUE : T);
        PORT (
            clk : IN STD_LOGIC;
            ld : IN STD_LOGIC;
            clr : IN STD_LOGIC;
            data : IN T;
            output : OUT T);
    END COMPONENT;

    CONSTANT clk_period : TIME := 10 ns;
    CONSTANT bits : INTEGER := 12;
    SUBTYPE datatype IS UNSIGNED(0 TO (bits - 1));
    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL ld : STD_LOGIC := '0';
    SIGNAL clr : STD_LOGIC := '0';
    SIGNAL data : datatype := to_unsigned(8, bits);
    SIGNAL output : datatype;

BEGIN
    DUT : syncregister
    GENERIC MAP(
        T => datatype,
        CLR_VALUE => (OTHERS => '0'))
    PORT MAP(
        clk => NOT clk,
        ld => ld,
        clr => clr,
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
        WAIT FOR 30ns;
        ld <= '0';
        clr <= '1';
        WAIT FOR 10ns;
        FINISH;
    END PROCESS;

END Behavioral;