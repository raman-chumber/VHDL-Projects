library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
  port(x, y, C_in: in std_logic;     --Inputs
       C_out, Sum: out std_logic);   --Outputs
end FullAdder;

architecture Equations of FullAdder is
begin			-- concurrent assignment statements
  Sum  <= x xor y xor C_in after 10 ns; 
  C_out <= (x and Y) or (x and C_in) or (y and C_in) after 10 ns;
end Equations;