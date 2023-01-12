LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY asyncregister IS
    GENERIC (
        TYPE T;
        CLR_VALUE: T);
    PORT (
    ld : IN STD_LOGIC;
    clr : IN STD_LOGIC;
    data : IN T;
    output : OUT T);
END asyncregister;

ARCHITECTURE Behavioral OF asyncregister IS
    SIGNAL output_reg : T;
BEGIN

    async : PROCESS (ld, clr, data)
    BEGIN
        IF clr = '1' THEN
            output_reg <= CLR_VALUE;
        ELSIF ld = '1' THEN
            output_reg <= data;
        END IF;
    END PROCESS;

    output <= output_reg;

END Behavioral;