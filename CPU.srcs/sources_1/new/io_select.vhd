LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY io_select IS
    PORT (
        addr : IN STD_LOGIC_VECTOR(0 TO 8);
        lec, esc : IN STD_LOGIC;
        addr_out : OUT STD_LOGIC_VECTOR(0 TO 7);
        lec0, esc0, lec1, esc1 : OUT STD_LOGIC
    );
END io_select;

ARCHITECTURE Behavioral OF io_select IS
BEGIN
    addr_out <= addr(1 TO 8);
    lec0 <= lec AND NOT addr(0);
    lec1 <= lec AND addr(0);
    esc0 <= esc AND NOT addr(0);
    esc1 <= esc AND addr(0);
END Behavioral;