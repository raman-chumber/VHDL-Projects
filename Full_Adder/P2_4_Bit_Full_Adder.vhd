library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder4 is
  port(A, B: in std_logic_vector(3 downto 0); Ci: in std_logic;  -- Inputs
       S: out std_logic_vector(3 downto 0); Co: out std_logic);  -- Outputs
end Adder4;

architecture Structure of Adder4 is
  component FullAdder
    port(x, y, C_in: in std_logic;         -- Inputs
         C_out, Sum: out std_logic);       -- Outputs
  end component;
  signal C: std_logic_vector(3 downto 1); -- C is an internal signal
begin     --instantiate four copies of the FullAdder
  FA0: FullAdder port map(A(0), B(0), Ci, C(1), S(0));
  FA1: FullAdder port map(A(1), B(1), C(1), C(2), S(1));
  FA2: FullAdder port map(A(2), B(2), C(2), C(3), S(2));
  FA3: FullAdder port map(A(3), B(3), C(3), Co, S(3));
end Structure;
