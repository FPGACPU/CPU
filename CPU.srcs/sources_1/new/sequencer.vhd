LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

--disclaimer: u == micro

ENTITY sequencer IS
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
END sequencer;

ARCHITECTURE Behavioral OF sequencer IS

    TYPE state_type IS (I0, I1, O0, O1);
    SIGNAL state : state_type;
    SIGNAL new_state : state_type;

BEGIN
    --Simplez orders
    -- It is set as a ciclic process
    StateProcess : PROCESS (clk) --Registro de estado  
    BEGIN
        IF (falling_edge(clk)) THEN
            state <= new_state;
        END IF;
    END PROCESS;

    sequencer : PROCESS (Z, CO, state)
    BEGIN
        --stage I0 

        -- All the outputs should be initialized and restarted    
        esc <= '0';
        lec <= '0';
        pac <= '0';
        tra2 <= '0';
        dec <= '0';
        sum <= '0';
        eri <= '0';
        eac <= '0';
        sac <= '0';
        scp <= '0';
        ecp <= '0';
        incp <= '0';
        ccp <= '0';
        era <= '0';
        sri <= '0';
        CASE (state) IS
            WHEN I0 => new_state <= I1;
                lec <= '1';
                incp <= '1';
                eri <= '1';
            WHEN I1 => CASE (CO) IS

            WHEN "000" => --ST
                sac <= '1';
                era <= '1';
                sri <= '1';
                new_state <= O0;

            WHEN "001" => --LD 
                era <= '1';
                sri <= '1';
                new_state <= O0;

            WHEN "010" => --ADD 
                era <= '1';
                sri <= '1';
                new_state <= O0;

            WHEN "011" => --BR
                ecp <= '1';
                era <= '1';
                sri <= '1';
                new_state <= I0;

            WHEN "100" => --BZ
                IF (Z = '1') THEN
                    ecp <= '1';
                    sri <= '1';
                    era <= '1';
                ELSE
                    scp <= '1';
                    era <= '1';
                END IF;
                new_state <= I0;

            WHEN "101" => -- CLR 
                eac <= '1';
                era <= '1';
                pac <= '1';
                scp <= '1';
                new_state <= I0;

            WHEN "110" => --DEC
                eac <= '1';
                era <= '1';
                dec <= '1';
                scp <= '1';
                new_state <= I0;

            WHEN "111" => --HALT
                ccp <= '1';
                era <= '1';
                scp <= '1';
                new_state <= I1;

            WHEN OTHERS => new_state <= I1;

        END CASE;

        WHEN O0 => new_state <= O1;
        CASE (CO) IS

            WHEN "000" => --ST
                esc <= '1';
                sac <= '1';

            WHEN "001" => --LD 
                eac <= '1';
                tra2 <= '1';
                lec <= '1';

            WHEN "010" => --ADD 
                eac <= '1';
                sum <= '1';
                lec <= '1';

            WHEN OTHERS =>
                new_state <= O1;

        END CASE;
        WHEN O1 => new_state <= I0;
        era <= '1';
        scp <= '1';
        IF (CO = "000") THEN
            sac <= '1';
        END IF;
        WHEN OTHERS => new_state <= O1;
    END CASE;
END PROCESS;
END Behavioral;