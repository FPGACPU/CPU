LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

USE IEEE.NUMERIC_STD.ALL;

ENTITY system IS
    PORT (
        clk_in : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        trace : IN STD_LOGIC;
        pulse : IN STD_LOGIC;
        ac_debug : OUT UNSIGNED(0 TO 11)
    );
END system;

ARCHITECTURE Behavioral OF system IS
    COMPONENT cpu IS
        PORT (
            clk : IN STD_LOGIC;
            lec, esc : OUT STD_LOGIC;
            data_bus : INOUT STD_LOGIC_VECTOR(0 TO 11);
            addr_bus : OUT STD_LOGIC_VECTOR(0 TO 8);
            ac_debug : OUT UNSIGNED(0 TO 11);
            reset : IN STD_LOGIC
        );
    END COMPONENT;

    COMPONENT io_select IS
        PORT (
            addr : IN STD_LOGIC_VECTOR(0 TO 8);
            lec, esc : IN STD_LOGIC;
            addr_out : OUT STD_LOGIC_VECTOR(0 TO 7);
            lec0, esc0, lec1, esc1 : OUT STD_LOGIC
        );
    END COMPONENT;

    COMPONENT clk_module IS
        GENERIC (
            Division : INTEGER := 4); --Division 2^(N-1)
        PORT (
            clk_in : IN STD_LOGIC;
            trace : IN STD_LOGIC; --Synchronous activation
            pulse : IN STD_LOGIC;
            clk_out : OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT memory IS
        PORT (
            clka : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR(0 TO 8);
            dina : IN STD_LOGIC_VECTOR(0 TO 11);
            douta : OUT STD_LOGIC_VECTOR(0 TO 11);
            wea : IN STD_LOGIC
        );
    END COMPONENT;
    COMPONENT tristate IS
        GENERIC (
            TYPE T;
            default_value : T);
        PORT (
            enable : IN STD_LOGIC;
            data : IN T;
            output : OUT T);
    END COMPONENT;

    SIGNAL clk : STD_LOGIC;
    SIGNAL addr : STD_LOGIC_VECTOR(0 TO 8);
    SIGNAL addr_mem : STD_LOGIC_VECTOR(0 TO 7);
    SIGNAL dout : STD_LOGIC_VECTOR(0 TO 11);
    SIGNAL data : STD_LOGIC_VECTOR(0 TO 11);
    SIGNAL lec, esc : STD_LOGIC;
    SIGNAL lec_mem, esc_mem : STD_LOGIC;
    SIGNAL lec_io, esc_io : STD_LOGIC;
    SIGNAL reset_internal : STD_LOGIC;
BEGIN
    cpu_inst : cpu PORT MAP(
        clk => clk,
        data_bus => data,
        addr_bus => addr,
        lec => lec,
        esc => esc,
        ac_debug => ac_debug,
        reset => reset_internal

    );

    io_select_inst : io_select PORT MAP(
        addr => addr,
        addr_out => addr_mem,
        lec => lec,
        esc => esc,
        lec0 => lec_mem,
        esc0 => esc_mem,
        lec1 => lec_io,
        esc1 => esc_io
    );

    memory_inst : memory PORT MAP(
        clka => clk,
        addra => addr_mem & '0',
        dina => data,
        douta => dout,
        wea => esc

    );

    tristate_inst : tristate GENERIC MAP(
        T => STD_LOGIC_VECTOR(0 TO 11),
        DEFAULT_VALUE => (OTHERS => 'Z')
        ) PORT MAP(
        data => dout,
        enable => lec,
        output => data
    );

    clk_module_inst : clk_module GENERIC MAP(
        division => 4
        ) PORT MAP(
        clk_in => clk_in,
        trace => trace,
        pulse => pulse,
        clk_out => clk
    );

    reset_process : PROCESS (reset, clk)
    BEGIN
        IF reset = '1' THEN
            reset_internal <= '1';
        ELSIF rising_edge(clk) THEN
            reset_internal <= '0';
        END IF;
    END PROCESS;

END Behavioral;