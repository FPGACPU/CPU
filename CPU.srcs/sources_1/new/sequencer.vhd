LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

--disclaimer: u == micro

ENTITY sequencer IS
    PORT (
        z : IN STD_LOGIC;
        CO : IN STD_LOGIC_VECTOR (2 DOWNTO 0); --instruction operation code 
        lec, esc : OUT STD_LOGIC; -- MP's u-orders 
        pac, tra2, dec, sum : OUT STD_LOGIC; --ALU's u-orders
        eac, sac : OUT STD_LOGIC; --AC's u-orders
        scp, ecp, incp, ccp : OUT STD_LOGIC; --CP's u-orders
        era : OUT STD_LOGIC; --RA's u-orders
        sri, eri : OUT STD_LOGIC --RI's u-orders
        --CLK : IN STD_LOGIC 
        -- idk if we should add the clk signal. I think so, but I cant find the sinc registers and idk how Juan did it (in order to have the same in both files)

    );
END sequencer;

ARCHITECTURE Behavioral OF sequencer IS

    SIGNAL I0 : STD_LOGIC_VECTOR(2 DOWNTO 0);

    SIGNAL ST_I1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL LD_I1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL ADD_I1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL BR_I1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL BZ_I1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL CLR_I1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL DEC_I1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL HALT_I1 : STD_LOGIC_VECTOR(2 DOWNTO 0);

    SIGNAL ST_O0 : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL LD_O0 : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL ADD_O0 : STD_LOGIC_VECTOR(2 DOWNTO 0);

    SIGNAL O1 : STD_LOGIC_VECTOR(1 DOWNTO 0);

BEGIN
    --Simplez orders
    -------------------------------------------------------change
    --Stage I0
    I0 <= eri & incp & lec;

    --Stage I1    
    ST_I1 <= sac & era & sri;
    LD_I1 <= era & sri;
    ADD_I1 <= era & sri;
    BR_I1 <= ecp & era & sri;
    BZ_I1 <= era & scp;
    CLR_I1 <= eac & era & lec;
    DEC_I1 <= eac & era & dec;
    HALT_I1 <= ccp & era & scp;

    --stage O0
    ST_O0 <= sac & esc;
    LD_O0 <= eac & tra2 & lec;
    ADD_O0 <= eac & sum & lec;

    --stage O1

    O1 <= era & scp;

    -----------------------------------------------

    sequencer : PROCESS (ST_I1, LD_I1, ADD_I1, BR_I1, BZ_I1, CLR_I1, DEC_I1, HALT_I1, ST_O0, LD_I1, ADD_I1, z, CO)
    BEGIN
        --stage I0
        I0 <= "111";
        --stage I1
        ----------------------------------------------change
        BZ_I1 <= "11" WHEN (CO = "100" & z = '1');

        CASE(CO) IS
            WHEN "000" => ST_I1 <= "111";
            WHEN "001" => LD_I1 <= "11";
            WHEN "010" => ADD_I1 <= "11";
            WHEN "011" => BR_I1 <= "111";
            WHEN "101" => CLR_I1 <= "111";
            WHEN "110" => DEC_I1 <= "111";
            WHEN "111" => HALT_I1 <= "111";
            WHEN OTHERS => HALT_I1 <= "111";
        END CASE;

        --stage O0
        --------------------------------------------------add extra null case (when others)
        CASE(CO) IS
            WHEN "000" => ST_O0 <= "11";
            WHEN "001" => LD_O0 <= "111";
            WHEN "010" => ADD_O0 <= "111";
            WHEN OTHERS =>
        END CASE;

        --stage O1
        ----------------------------------------------change
        WITH CO SELECT
            O1 <= "11" WHEN "000" | "001" | "010",
            WHEN OTHERS;

    END PROCESS;
END Behavioral;