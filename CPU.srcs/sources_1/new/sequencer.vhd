LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

--disclaimer: u == micro

ENTITY sequencer IS
    PORT (
        z : IN STD_LOGIC;
        CLK : IN STD_LOGIC;
        CO : IN STD_LOGIC_VECTOR (2 DOWNTO 0); --instruction operation code 
        lec, esc : OUT STD_LOGIC; -- MP's u-orders 
        pac, tra2, dec, sum : OUT STD_LOGIC; --ALU's u-orders
        eac, sac : OUT STD_LOGIC; --AC's u-orders
        scp, ecp, incp, ccp : OUT STD_LOGIC; --CP's u-orders
        era : OUT STD_LOGIC; --RA's u-orders
        sri, eri : OUT STD_LOGIC --RI's u-orders
    );
END sequencer;

ARCHITECTURE Behavioral OF sequencer IS

    SIGNAL I0, I1, O0, O1 : STD_LOGIC;

BEGIN
    --Simplez orders
    -- It is set as a ciclic process

    sequencer : PROCESS (CLK, lec, esc, pac, tra2, dec, sum, eac, sac, scp, ecp, incp, ccp, era, sri, eri, z, CO)
    BEGIN
        --stage I0 
        IF (falling_edge(CLK) AND I1 = '0' AND O0 = '0' AND 01 = '0') THEN

            IF (CO = "000") THEN --ST
                era <= '0';
                scp <= '0';
            ELSIF (CO = "001") THEN--LD
                era <= '0';
                scp <= '0';
            ELSIF (CO = "010") THEN --ADD
                era <= '0';
                scp <= '0';
            ELSE
                UNAFFECTED;

            END IF;

            eri <= '1';
            incp <= '1';
            lec <= '1';

            I1 <= '1';
        END IF;

        --stage I1
        IF (falling_edge(CLK) AND I1 = '1') THEN
            eri <= '0';
            incp <= '0';
            lec <= '0';

            IF (CO = "000") THEN --ST
                sac <= '1';
                era <= '1';
                sri <= '1';
            ELSIF (CO = "001") THEN--LD
                era <= '1';
                sri <= '1';
            ELSIF (CO = "010") THEN --ADD
                era <= '1';
                sri <= '1';
            ELSIF (CO = "011") THEN--BR
                ecp <= '1';
                era <= '1';
                sri <= '1';
            ELSIF (CO = "100" AND z = '1') THEN--BZ
                era <= '1';
                scp <= '1';
            ELSIF (CO = "101") THEN--CLR
                eac <= '1';
                era <= '1';
                lec <= '1';
            ELSIF (CO = "110") THEN--DEC
                eac <= '1';
                era <= '1';
                dec <= '1';
            ELSIF (CO = "111") THEN--HALT
                ccp <= '1';
                era <= '1';
                scp <= '1';
            ELSE
                UNAFFECTED;

            END IF;

            I1 <= '0';
            O0 <= '1';

        END IF;

        --stage O0
        IF (falling_edge(CLK) AND O0 = '1') THEN

            IF (CO = "000") THEN --ST
                era <= '0';
                sri <= '0';

                esc <= '1';
            ELSIF (CO = "001") THEN--LD
                era <= '0';
                sri <= '0';

                eac <= '1';
                tra2 <= '1';
                lec <= '1';
            ELSIF (CO = "010") THEN --ADD
                era <= '0';
                sri <= '0';

                eac <= '1';
                sum <= '1';
                lec <= '1';
            ELSIF (CO = "011") THEN--BR
                ecp <= '0';
                era <= '0';
                sri <= '0';
            ELSIF (CO = "100" AND z = '1') THEN--BZ
                era <= '0';
                scp <= '0';
            ELSIF (CO = "101") THEN--CLR
                eac <= '0';
                era <= '0';
                lec <= '0';
            ELSIF (CO = "110") THEN--DEC
                eac <= '0';
                era <= '0';
                dec <= '0';
            ELSIF (CO = "111") THEN--HALT
                ccp <= '0';
                era <= '0';
                scp <= '0';
            ELSE
                UNAFFECTED;

            END IF;

            O0 <= '0';
            O1 <= '1';

        END IF;
        --stage O1
        IF (falling_edge(CLK) AND O0 = '1') THEN

            IF (CO = "000") THEN --ST
                esc <= '0';

                era <= '1';
                scp <= '1';
            ELSIF (CO = "001") THEN--LD
                eac <= '0';
                tra2 <= '0';
                lec <= '0';

                era <= '1';
                scp <= '1';
            ELSIF (CO = "010") THEN --ADD
                eac <= '0';
                sum <= '0';
                lec <= '0';

                era <= '1';
                scp <= '1';
            ELSE
                UNAFFECTED;

            END IF;

            O1 <= '0';

        END IF;

    END PROCESS;
END Behavioral;