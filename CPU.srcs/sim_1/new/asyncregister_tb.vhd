LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE STD.ENV.FINISH;

ENTITY asyncregister_tb IS
END asyncregister_tb;

ARCHITECTURE Behavioral OF asyncregister_tb IS
    COMPONENT asyncregister
        GENERIC (
        TYPE T;
        CLR_VALUE: T);
        PORT (
            ld : IN STD_LOGIC;
            clr : IN STD_LOGIC;
            data : IN T;
            output : OUT T);
    END COMPONENT;

    CONSTANT bits : INTEGER := 12;
    SIGNAL ld : STD_LOGIC := '0';
    SIGNAL clr : STD_LOGIC := '0';
    SIGNAL data : STD_LOGIC_VECTOR(0 TO (bits - 1)) := STD_LOGIC_VECTOR(to_unsigned(8, bits));
    SIGNAL output : STD_LOGIC_VECTOR(0 TO (bits - 1));

BEGIN
    DUT : asyncregister
    GENERIC MAP(T => STD_LOGIC_VECTOR(0 TO 11), CLR_VALUE => (others => '0'))
    PORT MAP(
        ld => ld,
        clr => clr,
        data => data,
        output => output);

    simregister : PROCESS
    BEGIN
        ld <= '1';
        WAIT FOR 30ns;
        ld <= '0';
        data <= (OTHERS => 'Z');
        WAIT FOR 30ns;
        clr <= '1';
        WAIT FOR 10ns;
        FINISH;
    END PROCESS;

END Behavioral;