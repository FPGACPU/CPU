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

    SIGNAL STATE : STD_LOGIC_VECTOR (1 DOWNTO 0);

    -- 00 == I0             10 == O0 
    -- 01 == I1             11 == O1

BEGIN
    --Simplez orders
    -- It is set as a ciclic process

    sequencer : PROCESS (CLK, z, CO)
    BEGIN
        --stage I0 
        IF (falling_edge(CLK) AND STATE = "00") THEN
            -- All the outputs should be initialized and restarted    
            esc <= '0';
            pac <= '0';
            tra2 <= '0';
            dec <= '0';
            sum <= '0';
            eac <= '0';
            sac <= '0';
            scp <= '0';
            ecp <= '0';
            ccp <= '0';
            era <= '0';
            sri <= '0';

            -- I0 activations 
            eri <= '1';
            incp <= '1';
            lec <= '1';

            STATE <= "01";
        END IF;

        --stage I1
        IF (falling_edge(CLK) AND STATE = "01") THEN
            eri <= '0';
            incp <= '0';
            lec <= '0';

            CASE (CO) IS

                WHEN "000" => --ST
                    sac <= '1';
                    era <= '1';
                    sri <= '1';

                WHEN "001" => --LD 
                    era <= '1';
                    sri <= '1';

                WHEN "010" => --ADD 
                    era <= '1';
                    sri <= '1';

                WHEN "011" => --BR
                    ecp <= '1';
                    era <= '1';
                    sri <= '1';

                WHEN "100" => --BZ
                    IF (z = '1') THEN
                        era <= '1';
                        scp <= '1';
                    END IF;

                WHEN "101" => -- CLR 
                    eac <= '1';
                    era <= '1';
                    lec <= '1';

                WHEN "110" => --DEC
                    eac <= '1';
                    era <= '1';
                    dec <= '1';

                WHEN "111" => --HALT
                    ccp <= '1';
                    era <= '1';
                    scp <= '1';

            END CASE;

            STATE <= "10";

        END IF;

        --stage O0
        IF (falling_edge(CLK) AND STATE = "10") THEN

            CASE (CO) IS

                WHEN "000" => --ST
                    era <= '0';
                    sri <= '0';

                    esc <= '1';

                WHEN "001" => --LD 
                    era <= '0';
                    sri <= '0';

                    eac <= '1';
                    tra2 <= '1';
                    lec <= '1';

                WHEN "010" => --ADD 
                    era <= '0';
                    sri <= '0';

                    eac <= '1';
                    sum <= '1';
                    lec <= '1';

                WHEN "011" => --BR
                    ecp <= '0';
                    era <= '0';
                    sri <= '0';

                WHEN "100" => --BZ
                    era <= '0';
                    scp <= '0';

                WHEN "101" => -- CLR 
                    eac <= '0';
                    era <= '0';
                    lec <= '0';

                WHEN "110" => --DEC
                    eac <= '0';
                    era <= '0';
                    dec <= '0';
                WHEN "111" => --HALT
                    ccp <= '0';
                    era <= '0';
                    scp <= '0';
            END CASE;

            STATE <= "11";

        END IF;
        --stage O1
        IF (falling_edge(CLK) AND STATE = "11") THEN
            CASE (CO) IS

                WHEN "000" => --ST
                    esc <= '0';

                    era <= '1';
                    scp <= '1';

                WHEN "001" => --LD 
                    eac <= '0';
                    tra2 <= '0';
                    lec <= '0';

                    era <= '1';
                    scp <= '1';

                WHEN "010" => --ADD 
                    eac <= '0';
                    sum <= '0';
                    lec <= '0';

                    era <= '1';
                    scp <= '1';

            END CASE;

            STATE <= "00";

        END IF;

    END PROCESS;
END Behavioral;