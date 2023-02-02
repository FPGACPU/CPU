LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY incregister IS
    GENERIC (N : INTEGER := 12);
    PORT (
        clk : IN STD_LOGIC;
        ld : IN STD_LOGIC;
        clr : IN STD_LOGIC;
        inc : IN STD_LOGIC;
        data : IN UNSIGNED(0 TO (N - 1));
        output : OUT UNSIGNED(0 TO (N - 1)));
END incregister;

ARCHITECTURE Behavioral OF incregister IS
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

    SIGNAL reg_data : UNSIGNED(0 TO (N - 1));
    SIGNAL reg_ld : STD_LOGIC;
BEGIN
    internal_reg : syncregister
    GENERIC MAP(
        T => UNSIGNED(0 TO (N - 1)),
        CLR_VALUE => (OTHERS => '0'))
    PORT MAP(
        clk => clk,
        ld => reg_ld,
        clr => clr,
        data => reg_data,
        output => output);

    load_data : PROCESS (ld, inc, data, output)
        VARIABLE sel : STD_LOGIC_VECTOR (0 TO 1);
    BEGIN
        sel := ld & inc;
        CASE (sel) IS
                -- ld is on: Load data into internal register
            WHEN "10" => reg_data <= data;
                -- inc is on: Load output + 1 (suc_output) into internal register
            WHEN "01" => reg_data <= output + 1;
                -- Both ld & inc are on: Invalid state
            WHEN "11" => reg_data <= (OTHERS => 'X');
                -- Both ld & inc are off or any other state:
                -- We do not care as we aren't loading it into the internal register
            WHEN OTHERS => reg_data <= (OTHERS => '-');
        END CASE;
        reg_ld <= ld OR inc;
    END PROCESS;

END Behavioral;