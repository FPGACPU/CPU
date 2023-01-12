LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY cpu IS
    PORT (
        clk : IN STD_LOGIC;
        lec, esc : OUT STD_LOGIC;
        data_bus : INOUT STD_LOGIC_VECTOR(0 TO 11);
        addr_bus : OUT STD_LOGIC_VECTOR(0 TO 11);
        ac_output : OUT UNSIGNED(0 TO 11);
        reset : IN STD_LOGIC
    );
END cpu;

ARCHITECTURE Behavioral OF cpu IS
    COMPONENT syncregister
        GENERIC (N : INTEGER := 12);
        PORT (
            clk : IN STD_LOGIC;
            ld : IN STD_LOGIC;
            clr : IN STD_LOGIC;
            data : IN STD_LOGIC_VECTOR(0 TO (N - 1));
            output : OUT STD_LOGIC_VECTOR(0 TO (N - 1)));
    END COMPONENT;

    COMPONENT asyncregister IS
        GENERIC (N : INTEGER := 12);
        PORT (
            ld : IN STD_LOGIC;
            clr : IN STD_LOGIC;
            data : IN STD_LOGIC_VECTOR(0 TO (N - 1));
            output : OUT STD_LOGIC_VECTOR(0 TO (N - 1)));
    END COMPONENT;

    COMPONENT incregister IS
        GENERIC (N : INTEGER := 12);
        PORT (
            clk : IN STD_LOGIC;
            ld : IN STD_LOGIC;
            clr : IN STD_LOGIC;
            inc : IN STD_LOGIC;
            data : IN UNSIGNED(0 TO (N - 1));
            output : OUT UNSIGNED(0 TO (N - 1)));
    END COMPONENT;

    COMPONENT sequencer_comp IS
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

    COMPONENT alu_comp IS
        GENERIC (
            N : INTEGER := 12
        );
        PORT (
            data1 : IN unsigned(0 TO (N - 1));
            data2 : IN unsigned(0 TO (N - 1));
            pac, tra2, dec, sum : IN STD_LOGIC;
            result : OUT unsigned(0 TO (N - 1));
            z : OUT STD_LOGIC);
    END COMPONENT;

    SIGNAL pac, tra2, dec, sum, eac, sac, scp, ecp, incp, ccp, era, sri, eri : STD_LOGIC;
    SIGNAL z_input, z_output : STD_LOGIC;
    SIGNAL alu_output : UNSIGNED(0 TO 11);
    SIGNAL ri_output : STD_LOGIC_VECTOR(0 TO 11);
    ALIAS co : STD_LOGIC_VECTOR(0 TO 2) IS ri_output(0 TO 2);
    SIGNAL cp_output : UNSIGNED(0 TO 11);
BEGIN

    alu : alu_comp PORT MAP(
        pac => pac,
        sum => sum,
        tra2 => tra2,
        dec => dec,
        data1 => ac_output,
        data2 => unsigned(data_bus),
        result => alu_output,
        z => z_input
    );

    sequencer : sequencer_comp PORT MAP(
        z => z_output,
        clk => clk,
        co => co,
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
        eri => eri
    );

    ri : syncregister PORT MAP(
        clk => NOT clk,
        data => data_bus,
        output => ri_output,
        ld => eri,
        clr => reset
    );

    ac : syncregister PORT MAP(
        clk => NOT clk,
        ld => eac,
        output => STD_LOGIC_VECTOR(ac_output),
        data => STD_LOGIC_VECTOR(alu_output),
        clr => reset
    );

    ra : syncregister
    GENERIC MAP(N := 9)
    PORT MAP(
        clk => clk,
        data => addr_internal_bus,
        output => addr_bus,
        ld => era,
        clr => reset
    );

    cp : incregister
    GENERIC MAP(N := 9)
    PORT MAP(
        clk => NOT clk,
        ld => ecp,
        inc => incp,
        clr => ccp,
        data => unsigned(addr_internal_bus),
        output => cp_output,
    );

    z : asyncregister
    GENERIC MAP(N := 1)
    PORT MAP(
        data => z_input,
        ld => pac OR sum OR tra2 OR dec1,
        output => z_output,
        clr => reset
    );
END Behavioral;