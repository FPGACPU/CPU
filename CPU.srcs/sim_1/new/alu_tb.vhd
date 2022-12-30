----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2022 13:12:53
-- Design Name: 
-- Module Name: alu_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE IEEE.NUMERIC_STD.ALL;
USE STD.ENV.FINISH;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY alu_tb IS
    --  Port ( );
END alu_tb;

ARCHITECTURE Behavioral OF alu_tb IS
    COMPONENT alu
        PORT (
            data1 : IN unsigned(0 TO 8);
            data2 : IN unsigned(0 TO 8);
            pac, tra2, dec, sum : IN STD_LOGIC;
            result : OUT unsigned(0 TO 8);
            z : OUT STD_LOGIC);

    END COMPONENT;

    SIGNAL data1 : unsigned(0 TO 8) := "000001010";
    SIGNAL data2 : unsigned(0 TO 8) := "000000101";
    SIGNAL pac, tra2, dec : STD_LOGIC := '0';
    SIGNAL sum : STD_LOGIC := '0';
    SIGNAL result : unsigned(0 TO 8);
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