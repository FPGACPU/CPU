

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY incregister IS
    GENERIC (
        N : INTEGER := 12);
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
            N : INTEGER := 12);
        PORT (
            clk : IN STD_LOGIC;
            ld : IN STD_LOGIC;
            clr : IN STD_LOGIC;
            data : IN UNSIGNED(0 TO (N - 1));
            output : OUT UNSIGNED(0 TO (N - 1)));
    END COMPONENT;

    SIGNAL suc_output : UNSIGNED(0 TO (N - 1));
    SIGNAL reg_data : UNSIGNED(0 TO (N - 1));
    SIGNAL reg_ld : STD_LOGIC;
BEGIN
    reg : syncregister
    GENERIC MAP(
        N => N)
    PORT MAP(
        clk => clk,
        ld => reg_ld,
        clr => clr,
        data => reg_data,
        output => output);
    suc_output <= output + 1;
    

    load_data : PROCESS (clk, ld, inc, data, suc_output)
        VARIABLE sel : STD_LOGIC_VECTOR (0 TO 1);
    BEGIN
        sel := ld & inc;
        CASE (sel) IS
            WHEN "10" => reg_data <= data;
            WHEN "01" => reg_data <= suc_output;
            WHEN "11" => reg_data <= (OTHERS => 'X');
            WHEN OTHERS => reg_data <= (OTHERS => 'Z');
        END CASE;
        reg_ld <= ld OR inc;
    END PROCESS;

END Behavioral;