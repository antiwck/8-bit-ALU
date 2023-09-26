library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.ALL;
use ieee.numeric_std.all;

entity ArithmeticLogicUnit is
	generic ( 
		constant N: natural := 1  -- number of shited or rotated bits
    );

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
end ArithmeticLogicUnit;

architecture behavioral of ArithmeticLogicUnit is

begin
	process(A, B, S)
	
	variable tmp	: std_logic_vector(8 downto 0)	:= (others => '0');
	
	begin
		case(S) is
			-- Addition
			when "00000" =>			
				tmp 	:= ("0" & A) + ("0" & B);
				Sum 	<= tmp(7 downto 0);
				Carry <= tmp(8);
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= (others => 'U');
				ResB	<= (others => 'U');
				Res	<= (others => 'U');
				Comp	<= (others => 'U');
			
			-- Subtraction
			when "00001" => 		
				tmp 	:= ('0' & A) - ('0' & B);
				
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= tmp(7 downto 0);
				Borr	<= tmp(8);
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= (others => 'U');
				ResB	<= (others => 'U');
				Res	<= (others => 'U');
				Comp	<= (others => 'U');
			
			-- Multiplication
			when "00010" =>
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= std_logic_vector(to_unsigned((to_integer(unsigned(A)) * to_integer(unsigned(B))), 16));
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= (others => 'U');
				ResB	<= (others => 'U');
				Res	<= (others => 'U');
				Comp	<= (others => 'U');
			
			-- Division
			when "00011" => 
								
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= std_logic_vector(to_unsigned(to_integer(unsigned(A)) / to_integer(unsigned(B)), 8));
				Rema	<= std_logic_vector(to_unsigned(to_integer(unsigned(A)) mod to_integer(unsigned(B)), 8));
				ResA	<= (others => 'U');
				ResB	<= (others => 'U');
				Res	<= (others => 'U');
				Comp	<= (others => 'U');
			
			-- Increment
			when "00100" => 	
				
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= std_logic_vector(signed(A) + to_signed(N, 8));
				ResB	<= std_logic_vector(signed(B) + to_signed(N, 8));
				Res	<= (others => 'U');
				Comp	<= (others => 'U');
			
			-- Decrement
			when "00101" => 		
			
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= std_logic_vector(signed(A) - to_signed(N, 8));
				ResB	<= std_logic_vector(signed(B) - to_signed(N, 8));
				Res	<= (others => 'U');
				Comp	<= (others => 'U');
				
			-- Negation
			when "00110" => 
			
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= not(A);
				ResB	<= not(B);
				Res	<= (others => 'U');
				Comp	<= (others => 'U');
			
			-- Logical shift left
			when "00111" =>
			
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= std_logic_vector(unsigned(A) sll N);
				ResB	<= std_logic_vector(unsigned(B) sll N);
				Res	<= (others => 'U');
				Comp	<= (others => 'U');
							
			-- Logical shift right
			when "01000" =>
			
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= std_logic_vector(unsigned(A) srl N);
				ResB	<= std_logic_vector(unsigned(B) srl N);
				Res	<= (others => 'U');
				Comp	<= (others => 'U');
											
			-- Arithmetic shift left
			when "01001" => 	
			
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= std_logic_vector(shift_left(signed(A), N));
				ResB	<= std_logic_vector(shift_left(signed(B), N));
				Res	<= (others => 'U');
				Comp	<= (others => 'U');
			
			-- Arithmetic shift right
			when "01010" =>
			
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= std_logic_vector(shift_right(signed(A), N));
				ResB	<= std_logic_vector(shift_right(signed(B), N));
				Res	<= (others => 'U');
				Comp	<= (others => 'U');
				
			--  Rotate left
			when "01011" =>
			
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= std_logic_vector(unsigned(A) rol N);
				ResB	<= std_logic_vector(unsigned(B) rol N);
				Res	<= (others => 'U');
				Comp	<= (others => 'U');

			-- Rotate right
			when "01100" =>
			
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= std_logic_vector(unsigned(A) ror N);
				ResB	<= std_logic_vector(unsigned(B) ror N);
				Res	<= (others => 'U');
				Comp	<= (others => 'U');
			
			-- Logical AND
			when "01101" => 	
			
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= (others => 'U');
				ResB	<= (others => 'U');
				Res	<= A AND B;
				Comp	<= (others => 'U');
			
			-- Logical OR
			when "01110" => 		
			
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= (others => 'U');
				ResB	<= (others => 'U');
				Res	<= A OR B;
				Comp	<= (others => 'U');
				
			-- Logical XOR
			when "01111" => 		
			
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= (others => 'U');
				ResB	<= (others => 'U');
				Res	<= A XOR B;
				Comp	<= (others => 'U');
			
			-- Logical NOR
			when "10000" => 	
			
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= (others => 'U');
				ResB	<= (others => 'U');
				Res	<= A NOR B;
				Comp	<= (others => 'U');
				
			-- Logical NAND
			when "10001" =>		
			
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= (others => 'U');
				ResB	<= (others => 'U');
				Res	<= A NAND B;
				Comp	<= (others => 'U');
			
			-- Logical XNOR
			when "10010" => 		
			
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= (others => 'U');
				ResB	<= (others => 'U');
				Res	<= A XNOR B;
				Comp	<= (others => 'U');
		
			-- Comparator
			when "10011" =>
				-- A = B (00)
				if A = B then
					Sum 	<= (others => 'U');
					Carry <= 'U';
					Diff	<= (others => 'U');
					Borr	<= 'U';
					Mult	<= (others => 'U');
					Quo	<= (others => 'U');
					Rema	<= (others => 'U');
					ResA	<= (others => 'U');
					ResB	<= (others => 'U');
					Res	<= (others => 'U');
					Comp	<= "00";
				
				-- A > B (01)
				elsif A > B then
					Sum 	<= (others => 'U');
					Carry <= 'U';
					Diff	<= (others => 'U');
					Borr	<= 'U';
					Mult	<= (others => 'U');
					Quo	<= (others => 'U');
					Rema	<= (others => 'U');
					ResA	<= (others => 'U');
					ResB	<= (others => 'U');
					Res	<= (others => 'U');
					Comp	<= "01";	
					
				-- A < B (10)
				else
					Sum 	<= (others => 'U');
					Carry <= 'U';
					Diff	<= (others => 'U');
					Borr	<= 'U';
					Mult	<= (others => 'U');
					Quo	<= (others => 'U');
					Rema	<= (others => 'U');
					ResA	<= (others => 'U');
					ResB	<= (others => 'U');
					Res	<= (others => 'U');
					Comp	<= "10";	
				
				end if;				
						
			-- Otherwise
			when others =>
				Sum 	<= (others => 'U');
				Carry <= 'U';
				Diff	<= (others => 'U');
				Borr	<= 'U';
				Mult	<= (others => 'U');
				Quo	<= (others => 'U');
				Rema	<= (others => 'U');
				ResA	<= (others => 'U');
				ResB	<= (others => 'U');
				Res	<= (others => 'U');
				Comp	<= (others => 'U');		
		end case;
	end process;
	
end behavioral;
