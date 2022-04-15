Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity addsub is
port(
	a,b,c: in std_logic;
	hs,hc,fs,fc,hd,hb,fd,fb: out std_logic);
end addsub;

architecture behavioral of addsub is
begin 
hs <= a xor b;
hc <= a and b;
fs <= a xor b xor c;
fc <= (c and (a xor b)) or (a and b);
hb <= (not a) and b;
hd <= a xor b;
fd <= a xor b xor c;
fb <=(c and not(a xor b)) or ((not a) and b);

end behavioral;