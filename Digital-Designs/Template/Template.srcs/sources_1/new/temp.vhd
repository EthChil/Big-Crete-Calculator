library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder_3b is
	port( 	a1_i 		: in std_logic;
    		b1_i 		: in std_logic;
            a2_i 		: in std_logic;
            b2_i 		: in std_logic;
            a3_i 		: in std_logic;
            b3_i 		: in std_logic;
            sum1_i 		: out std_logic;
            sum2_i 		: out std_logic;
            sum3_i 		: out std_logic;
            carry_out_i : out std_logic
         );
	end full_adder_3b;
    
architecture behavioral of full_adder_3b is 

	--Define any additional signals you need here
	--These are like internal wires
    signal carry_fa_1, carry_fa_2 : std_logic;

  	--Define the inputs and outputs of any components you need
	--this must match an entity defined in another project file
  	component full_adder_1b
      port(	  a_i 		: in std_logic;
    		b_i 		: in std_logic;
            carry_in_i 	: in std_logic;
            sum_i 		: out std_logic;
            carry_out_i : out std_logic
           );
  	end component;

	begin
    	--Instantiate copies of the components
		--Notice that each copy has a unique name
		--the port map defines how they are wired within the architecture
    	fa_1 : full_adder_1b port map(a1_i, b1_i, '0', sum1_i, carry_fa_1);
    	fa_2 : full_adder_1b port map(a2_i, b2_i, carry_fa_1, sum2_i, carry_fa_2);
        fa_3 : full_adder_1b port map(a3_i, b3_i, carry_fa_2, sum3_i, carry_out_i);
    	
    	
        --add your code here to complete the implementation     
        
   	end behavioral;