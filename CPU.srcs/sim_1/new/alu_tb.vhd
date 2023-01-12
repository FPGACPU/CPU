LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE STD.ENV.FINISH;

ENTITY alu_tb IS
END alu_tb;

ARCHITECTURE Behavioral OF alu_tb IS
    COMPONENT alu
        GENERIC (
            N : INTEGER := 9
        );
        PORT (
            data1 : IN unsigned(0 TO (N - 1));
            data2 : IN unsigned(0 TO (N - 1));
            pac, tra2, dec, sum : IN STD_LOGIC;
            result : OUT unsigned(0 TO (N - 1));
            z : OUT STD_LOGIC);

    END COMPONENT;

    CONSTANT bits : INTEGER := 9;
    SIGNAL data1 : unsigned(0 TO (bits - 1)) := to_unsigned(10, bits);
    SIGNAL data2 : unsigned(0 TO (bits - 1)) := to_unsigned(5, bits);
    SIGNAL pac, tra2, dec : STD_LOGIC := '0';
    SIGNAL sum : STD_LOGIC := '0';
    SIGNAL result : unsigned(0 TO (bits - 1));
    SIGNAL z : STD_LOGIC;
BEGIN

    DUT : alu PORT MAP(
        data1 => data1,
        data2 => data2,
        pac => pac,
        tra2 => tra2,
        dec => dec,
        sum => sum,
        result => result,
        z => z);
    simalu : PROCESS
    BEGIN

        pac <= '1';
        WAIT FOR 10ns;
        pac <= '0';
        tra2 <= '1';
        WAIT FOR 10ns;
        tra2 <= '0';
        dec <= '1';
        WAIT FOR 10ns;
        dec <= '0';
        sum <= '1';
        WAIT FOR 10ns;
        sum <= '0';
        WAIT FOR 10ns;
        FINISH;

    END PROCESS;
END Behavioral;