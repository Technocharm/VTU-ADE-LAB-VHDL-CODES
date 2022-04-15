Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity jkff is
port(
	j,k: in std_logic;
	r: in std_logic;
	clk: in std_logic;
	q,qb: inout std_logic);
end jkff;

architecture behavioral of jkff is 
begin 
	jkff: process(j,k,clk,r) is 
begin 
	if(r='1') then
	q <= '0';
	qb <= '1';
	elsif (rising_edge(clk)) then 
		if(j='0' and k='0') then
		q<=q;
		qb<=qb;
		elsif(j='0' and k='1') then
		q<='0';
		qb<='1';
		elsif(j='1' and k='0') then
		q<='1';
		qb<='0';
		elsif(j='1' and k='1') then
		q<=not q;
		qb<=not qb;
end if;
end if;
end process jkff;
end behavioral;