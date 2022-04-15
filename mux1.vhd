Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux1 is
port(j,k: in std_logic;
	r: in std_logic;
	clk: in std_logic;
	q,qb:inout std_logic);
end mux1;
architecture behavioral of mux1 is 
component jkff is
port(
	j,k: in std_logic;
	r: in std_logic;
	clk: in std_logic;
	q,qb: inout std_logic);
end component jkff;

signal s1,s2: std_logic;
signal in_clk: std_logic;

begin 
	in_clk <= not clk;
	uo: jkff port map(clk => clk, j=>j, k=>k, r=>r, q=>s1, qb=>s2);
	u1: jkff port map(clk => in_clk, j=>s1, k=>s2, r=>r, q=>q, qb=>qb);
end behavioral;
