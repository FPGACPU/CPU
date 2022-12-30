LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY alu IS
    GENERIC (
        N : INTEGER := 9
    );
    PORT (
        data1 : IN unsigned(0 TO (N - 1));
        data2 : IN unsigned(0 TO (N - 1));
        pac, tra2, dec, sum : IN STD_LOGIC;
        result : OUT unsigned(0 TO (N - 1));
        z : OUT STD_LOGIC);
END alu;

ARCHITECTURE Behavioral OF alu IS
    SIGNAL presult : unsigned(0 TO (N - 1));
    SIGNAL microinstructions : STD_LOGIC_VECTOR(0 TO 3);

BEGIN
    microinstructions <= pac & tra2 & dec & sum;
    alu : PROCESS (microinstructions, data1, data2)
    BEGIN
        CASE(microinstructions) IS
            WHEN "1000" => presult(0 TO (N - 1)) <= (OTHERS => '0');
            WHEN "0100" => presult <= data2;
            WHEN "0010" => presult <= data1 - 1;
            WHEN "0001" => presult <= data1 + data2;
            WHEN OTHERS => presult(0 TO (N - 1)) <= (OTHERS => 'Z');
        END CASE;
    END PROCESS;

    z <= '1' WHEN (presult = 0) ELSE
        '0';

    result <= presult;

END Behavioral;