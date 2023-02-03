LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
LIBRARY UNISIM;
USE UNISIM.VComponents.ALL;

ENTITY memory_256 IS
    PORT (
        clk : IN STD_LOGIC;
        lec, esc : IN STD_LOGIC;
        addr : IN STD_LOGIC_VECTOR(0 TO 7);
        data : INOUT STD_LOGIC_VECTOR(0 TO 11)
    );
END memory_256;

ARCHITECTURE Behavioral OF memory_256 IS
    COMPONENT tristate
        GENERIC (
            TYPE T;
            default_value : T);
        PORT (
            enable : IN STD_LOGIC;
            data : IN T;
            output : OUT T);
    END COMPONENT;

    SIGNAL output : STD_LOGIC_VECTOR(0 TO 11);
    -- CONSTANT program : STD_LOGIC_VECTOR(0 TO 256 * 12 - 1) := ((0 TO 27) => o"3003000200041001200260007000", OTHERS => '0');
BEGIN

    ram_tristate : tristate GENERIC MAP(
        T => STD_LOGIC_VECTOR(0 TO 11),
        DEFAULT_VALUE => (OTHERS => 'Z')
        ) PORT MAP (
        enable => lec,
        output => data,
        data => output
    );

    peruano_process : PROCESS (addr)
    BEGIN
        CASE(to_integer(unsigned(addr))) IS
            WHEN(0) => output <= o"3003";
            WHEN(1) => output <= o"0002";
            WHEN(2) => output <= o"0004";
            WHEN(3) => output <= o"1001";
            WHEN(4) => output <= o"2002";
            WHEN(5) => output <= o"6000";
            WHEN(6) => output <= o"7000";
            WHEN OTHERS => output <= o"7000";
        END CASE;
    END PROCESS;
    --    gen_bank : FOR bit_idx IN 0 TO 12 GENERATE
    --    BEGIN
    --        ram_tristate : tristate GENERIC MAP(
    --            T => STD_LOGIC,
    --            DEFAULT_VALUE => 'Z'
    --            ) PORT MAP(
    --            enable => lec,
    --            output => data,
    --            data => output
    --        );

    --        ram_low : RAM256X1S GENERIC MAP(
    --            INIT => program
    --        )
    --        PORT MAP(
    --            O => output(bit_idx), -- Read/Write port 1-bit output
    --            A => addr, -- Read/Write port 8-bit address input
    --            D => data(bit_idx), -- RAM data input
    --            WCLK => clk, -- Write clock input
    --            WE => esc -- Write enable input
    --        );
    --    END GENERATE gen_bank;

END Behavioral;