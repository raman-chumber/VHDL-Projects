{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf400
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \
-- Library's\
library IEEE;\
use IEEE.STD_LOGIC_1164.ALL;\
\
-- Entity Declaration\
-- This is where all the Inputs & Outputs are specified\
entity Full_Adder_2 is\
port (\
	S			: out std_logic;\
	C_out		: out std_logic;\
	x			: in std_logic;\
	y			: in std_logic;\
	C_in		: in std_logic);\
end Full_Adder_2;\
\
-- Architecture Body\
-- This is where we describe what occurs\
architecture behavior of Full_Adder_2 is\
\
-- Define signals we will be using\
signal inputs	: std_logic_vector(2 downto 0);\
signal outputs	: std_logic_vector(1 downto 0);\
\
-- Begin statement goes after signals are defined\
-- and after components are instantiated. Note that\
-- we are not instantiating any signals in this design\
begin\
\
-- Combine inputs & outputs into std_logic_vector\
inputs <= C_in & x & y;\
C_out <= outputs(1);\
S <= outputs(0);\
\
-- Process that determines output based on the inputs\
-- Note the similarity between this and the Full_Adder_2\
-- truth table\
adder_proc : process(inputs)\
begin\
	case inputs is\
		when "000" =>\
			outputs <= "00";\
		when "001" =>\
			outputs <= "01";\
		when "010" =>\
			outputs <= "01";\
		when "011" =>\
			outputs <= "10";\
		when "100" =>\
			outputs <= "01";\
		when "101" =>\
			outputs <= "10";\
		when "110" =>\
			outputs <= "10";\
		when "111" =>\
			outputs <= "11";\
		when others =>\
			outputs <= (others => 'X');\
	end case;\
end process adder_proc;\
end behavior;}