-- Code your 1-bit full adder here
--Note that the code provided to you is NOT full implemented
--You need to review what is given and complete the design

library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder_1b is
	port( 	a_i 		: in std_logic;
    		b_i 		: in std_logic;
            carry_in_i 	: in std_logic;
            sum_i 		: out std_logic;
            carry_out_i : out std_logic
         );
	end full_adder_1b;
    
architecture behavioral of full_adder_1b is 

	--Define any additional signals you need here
	--These are like internal wires

  	--Define the inputs and outputs of any components you need
	--this must match an entity defined in another project file

	begin
    	--Instantiate copies of the components
		--Notice that each copy has a unique name
		--the port map defines how they are wired within the architecture
        sum_i <= a_i xor b_i xor carry_in_i;
        carry_out_i <= (a_i and b_i) or ((a_i xor b_i xor carry_in_i) and carry_in_i);
    	
        --add your code here to complete the implementation     
        
   	end behavioral;