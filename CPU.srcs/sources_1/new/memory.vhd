LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
LIBRARY UNISIM;
USE UNISIM.VComponents.ALL;

ENTITY memory IS
    PORT (
        clk : IN STD_LOGIC;
        lec, esc : IN STD_LOGIC;
        addr : IN STD_LOGIC_VECTOR(0 TO 8);
        data : INOUT STD_LOGIC_VECTOR(0 TO 11)
    );
END memory;

ARCHITECTURE Behavioral OF memory IS
    COMPONENT tristate
        GENERIC (
            TYPE T;
            default_value : T);
        PORT (
            enable : IN STD_LOGIC;
            data : IN T;
            output : OUT T);
    END COMPONENT;

    SIGNAL output_low : STD_LOGIC_VECTOR(0 TO 11);
BEGIN
    gen_low: FOR bit_idx IN 0 TO 12 GENERATE
    BEGIN
        ram_tristate : tristate GENERIC MAP(
        T => STD_LOGIC,
        DEFAULT_VALUE => 'Z'
        ) PORT MAP(
            enable => lec AND NOT addr[0],

        );

        ram_low : RAM256X1S
        PORT MAP(
            O => output_low[bit_idx], -- Read/Write port 1-bit output
            A => addr[0 : 7], -- Read/Write port 8-bit address input
            D => data[bit_idx], -- RAM data input
            WCLK => clk, -- Write clock input
            WE => esc AND NOT addr[0] -- Write enable input
        );
    END GENERATE gen_low;

END Behavioral;