----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2022 19:19:11
-- Design Name: 
-- Module Name: alubeta10 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY alu IS
    --  Port ( );
    PORT (
        data1 : IN unsigned(0 TO 8);
        data2 : IN unsigned(0 TO 8);
        pac, tra2, dec, sum : IN STD_LOGIC;
        result : OUT unsigned(0 TO 8);
        z : OUT STD_LOGIC);
END alu;

ARCHITECTURE Behavioral OF alu IS
    SIGNAL presult : unsigned(0 TO 8);
    SIGNAL microinstructions : STD_LOGIC_VECTOR(0 TO 3);

BEGIN
    microinstructions <= pac & tra2 & dec & sum;
    alu : PROCESS (microinstructions, data1, data2)
    BEGIN
        CASE(microinstructions) IS

            WHEN "1000" => presult(0 TO 8) <= (OTHERS => '0');
            WHEN "0100" => presult <= data2;
            WHEN "0010" => presult <= data1 - 1;
            WHEN "0001" => presult <= data1 + data2;
            WHEN OTHERS => presult(0 TO 8) <= (OTHERS => 'Z');
        END CASE;
    END PROCESS;
    z <= '1' WHEN (presult = "000000000")
        ELSE
        '0';
    result <= presult;

END Behavioral;