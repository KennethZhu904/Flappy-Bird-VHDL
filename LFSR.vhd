library ieee;
use ieee.std_logic_1164.all;

entity LFSR is
    port (
        sys_clk:            in  std_logic;
        random_data:        out std_logic_vector (15 downto 0)
    );
end entity LFSR;

architecture behavioral of LFSR is
    signal q:             std_logic_vector(15 downto 0) := "1001101001101010";
    signal n1, n2, n3:    std_logic;
begin
    process (sys_clk)
    begin
		if falling_edge(sys_clk) then
			q <= q(14 downto 0) & n3;
		end if;
    end process;
    n1 <= q(15) xor q(13);
    n2 <= n1 xor q(11);
    n3 <= n2 xor q(10);

    random_data <= q;
end architecture behavioral;