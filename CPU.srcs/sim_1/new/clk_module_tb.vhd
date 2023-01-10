LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE STD.ENV.FINISH;

ENTITY clk_module_tb IS
END clk_module_tb;

ARCHITECTURE Behavioral OF clk_module_tb IS
    COMPONENT clk_divider
        GENERIC (N : INTEGER := 4);
        PORT (
            clk_in : IN STD_LOGIC;
            clk_out : OUT STD_LOGIC);
    END COMPONENT;

    SIGNAL clk_in, clk_out : STD_LOGIC := '0';
    CONSTANT clk_period : TIME := 10ns;

BEGIN
    DUT : clk_divider
    PORT MAP(
        clk_in => clk_in,
        clk_out => clk_out);

    clk : PROCESS
    BEGIN
        clk_in <= '0';
        WAIT FOR clk_period/2;
        clk_in <= '1';
        WAIT FOR clk_period/2;
    END PROCESS;
END Behavioral;