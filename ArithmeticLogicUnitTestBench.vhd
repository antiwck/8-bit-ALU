library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ArithmeticLogicUnitTestBench is
end ArithmeticLogicUnitTestBench;

architecture behavioral of ArithmeticLogicUnitTestBench is 

component ArithmeticLogicUnit is
	port (
		A, B	: in std_logic_vector(7 downto 0);
		S		: in std_logic_vector(4 downto 0);
		Sum	: out std_logic_vector(7 downto 0);
		Carry	: out std_logic;
		Diff	: out std_logic_vector(7 downto 0);
		Borr	: out std_logic;
		Mult	: out std_logic_vector(15 downto 0);
		Quo	: out std_logic_vector(7 downto 0);
		Rema	: out std_logic_vector(7 downto 0);
		ResA	: out std_logic_vector(7 downto 0);
		ResB	: out std_logic_vector(7 downto 0);
		Res	: out std_logic_vector(7 downto 0);
		Comp	: out std_logic_vector(1 downto 0)
	);
end component;

signal A, B		: std_logic_vector(7 downto 0) := (others => '0');
signal S			: std_logic_vector(4 downto 0) := (others => '0');
signal Sum		: std_logic_vector(7 downto 0) := (others => '0');
signal Carry	: std_logic;
signal Diff		: std_logic_vector(7 downto 0) := (others => '0');
signal Borr		: std_logic;
signal Mult		: std_logic_vector(15 downto 0) := (others => '0');
signal Quo, Rema, ResA, ResB, Res	: std_logic_vector(7 downto 0) := (others => '0');
signal Comp		: std_logic_vector(1 downto 0) := (others => '0');

begin

	uut: ArithmeticLogicUnit port map (
		A		=> A,
		B	 	=> B,
		S		=> S,
		Sum	=> Sum,
		Carry	=> Carry,
		Diff	=> Diff, 
		Borr	=> Borr,
		Mult	=> Mult,
		Quo	=> Quo,
		Rema	=> Rema,
		ResA	=> ResA,
		ResB	=> ResB,
		Res	=> Res,
		Comp	=> Comp
	);
	
	sim: process
	begin 
		A <= "11110110";
		B <= "00001101";
		S <= "00000";
		
		for i in 0 to 19 loop 
			wait for 10 ns;
			S <= S + x"1";
		end loop;
		
	end process;
	
end behavioral;
