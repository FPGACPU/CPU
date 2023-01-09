LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE STD.ENV.FINISH;

ENTITY sequencer_tb IS
END sequencer_tb;

ARCHITECTURE Behavioral OF sequencer_tb IS
    COMPONENT sequencer
        PORT (
            Z : IN STD_LOGIC;
            clk : IN STD_LOGIC;
            CO : IN STD_LOGIC_VECTOR (2 DOWNTO 0); --instruction operation code 
            lec, esc : OUT STD_LOGIC; -- MP's u-orders 
            pac, tra2, dec, sum : OUT STD_LOGIC; --ALU's u-orders
            eac, sac : OUT STD_LOGIC; --AC's u-orders
            scp, ecp, incp, ccp : OUT STD_LOGIC; --CP's u-orders
            era : OUT STD_LOGIC; --RA's u-orders
            sri, eri : OUT STD_LOGIC --RI's u-orders
        );

    END COMPONENT;
    CONSTANT clk_period : TIME := 10ns;
    SIGNAL Z : STD_LOGIC := '0';
    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL CO : STD_LOGIC_VECTOR(2 DOWNTO 0) := "000";
    SIGNAL lec, esc, pac, tra2, dec, sum, eac, sac, scp, ecp, incp, ccp, era, sri, eri : STD_LOGIC;
BEGIN
    clk_process : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR clk_period/2;
        clk <= '1';
        WAIT FOR clk_period/2;
    END PROCESS;

    DUT : sequencer PORT MAP(
        z => z,
        clk => clk,
        CO => CO,
        lec => lec,
        esc => esc,
        pac => pac,
        tra2 => tra2,
        dec => dec,
        sum => sum,
        eac => eac,
        sac => sac,
        scp => scp,
        ecp => ecp,
        incp => incp,
        ccp => ccp,
        era => era,
        sri => sri,
        eri => eri);

    simsequencer : PROCESS
    BEGIN

        WAIT FOR 40ns;
        CO <= "001";
        WAIT FOR 40ns;
        CO <= "010";
        WAIT FOR 40ns;
        CO <= "011";
        WAIT FOR 20ns;
        CO <= "100";
        WAIT FOR 20ns;
        CO <= "100";
        Z <= '1';
        WAIT FOR 20ns;
        CO <= "101";
        WAIT FOR 20ns;
        CO <= "110";
        WAIT FOR 20ns;
        CO <= "000";
        WAIT FOR 20ns;
        CO <= "ZZZ";
        WAIT FOR 20ns;
        CO <= "111";
        WAIT FOR 60ns;

        FINISH;

    END PROCESS;
END Behavioral;