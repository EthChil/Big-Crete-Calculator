-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT (device under test) component
component full_adder_3b is
port(
			a1_i 		: in std_logic;
    		b1_i 		: in std_logic;
            a2_i 		: in std_logic;
            b2_i 		: in std_logic;
            a3_i 		: in std_logic;
            b3_i 		: in std_logic;
            sum1_i 		: out std_logic;
            sum2_i 		: out std_logic;
            sum3_i 		: out std_logic;
            carry_out_i : out std_logic);
end component;

signal a1_in, b1_in, a2_in, b2_in, a3_in, b3_in, sum1_out, sum2_out, sum3_out, carry_out : std_logic;

begin

  -- Connect DUT
  DUT: full_adder_3b port map(a1_in, b1_in, a2_in, b2_in, a3_in, b3_in, sum1_out, sum2_out, sum3_out, carry_out);

  process
  begin
    a1_in <= '1';
    a2_in <= '0';
    a3_in <= '0';
    b1_in <= '1';
    b2_in <= '0';
    b3_in <= '0';
    wait for 1 ns;
    assert(sum1_out='0' and sum2_out='1' and sum3_out='0' and carry_out='0') report "Fail" severity error;
    
    a1_in <= '1';
    a2_in <= '1';
    a3_in <= '0';
    b1_in <= '1';
    b2_in <= '0';
    b3_in <= '0';
    wait for 1 ns;
    assert(sum1_out='0' and sum2_out='0' and sum3_out='1' and carry_out='0') report "Fail" severity error;
    
    a1_in <= '0';
    a2_in <= '0';
    a3_in <= '0';
    b1_in <= '0';
    b2_in <= '0';
    b3_in <= '0';
    wait for 1 ns;
    assert(sum1_out='0' and sum2_out='0' and sum3_out='0' and carry_out='0') report "Fail" severity error;
    
    a1_in <= '0';
    a2_in <= '1';
    a3_in <= '0';
    b1_in <= '0';
    b2_in <= '1';
    b3_in <= '0';
    wait for 1 ns;
    assert(sum1_out='0' and sum2_out='0' and sum3_out='1' and carry_out='0') report "Fail" severity error;
    
    a1_in <= '1';
    a2_in <= '1';
    a3_in <= '0';
    b1_in <= '0';
    b2_in <= '1';
    b3_in <= '0';
    wait for 1 ns;
    assert(sum1_out='1' and sum2_out='0' and sum3_out='1' and carry_out='0') report "Fail" severity error;
    
    a1_in <= '1';
    a2_in <= '1';
    a3_in <= '0';
    b1_in <= '1';
    b2_in <= '1';
    b3_in <= '0';
    wait for 1 ns;
    assert(sum1_out='0' and sum2_out='1' and sum3_out='1' and carry_out='0') report "Fail" severity error;
    
    a1_in <= '1';
    a2_in <= '1';
    a3_in <= '1';
    b1_in <= '1';
    b2_in <= '0';
    b3_in <= '0';
    wait for 1 ns;
    assert(sum1_out='0' and sum2_out='0' and sum3_out='0' and carry_out='1') report "Fail" severity error;
    
    a1_in <= '0';
    a2_in <= '1';
    a3_in <= '1';
    b1_in <= '0';
    b2_in <= '1';
    b3_in <= '0';
    wait for 1 ns;
    assert(sum1_out='0' and sum2_out='0' and sum3_out='0' and carry_out='1') report "Fail" severity error;
    
    a1_in <= '0';
    a2_in <= '0';
    a3_in <= '0';
    b1_in <= '0';
    b2_in <= '0';
    b3_in <= '0';
    wait for 1 ns;
    assert(sum1_out='0' and sum2_out='0' and sum3_out='0' and carry_out='0') report "Fail" severity error;
    
    a1_in <= '1';
    a2_in <= '1';
    a3_in <= '1';
    b1_in <= '0';
    b2_in <= '1';
    b3_in <= '0';
    wait for 1 ns;
    assert(sum1_out='1' and sum2_out='0' and sum3_out='0' and carry_out='1') report "Fail" severity error;
    
    a1_in <= '1';
    a2_in <= '1';
    a3_in <= '1';
    b1_in <= '0';
    b2_in <= '1';
    b3_in <= '1';
    wait for 1 ns;
    assert(sum1_out='0' and sum2_out='1' and sum3_out='0' and carry_out='1') report "Fail" severity error;
    
    a1_in <= '0';
    a2_in <= '0';
    a3_in <= '1';
    b1_in <= '0';
    b2_in <= '0';
    b3_in <= '1';
    wait for 1 ns;
    assert(sum1_out='0' and sum2_out='0' and sum3_out='0' and carry_out='1') report "Fail" severity error;
    
    a1_in <= '1';
    a2_in <= '0';
    a3_in <= '1';
    b1_in <= '0';
    b2_in <= '0';
    b3_in <= '1';
    wait for 1 ns;
    assert(sum1_out='0' and sum2_out='1' and sum3_out='0' and carry_out='1') report "Fail" severity error;
    
    a1_in <= '0';
    a2_in <= '1';
    a3_in <= '1';
    b1_in <= '0';
    b2_in <= '0';
    b3_in <= '1';
    wait for 1 ns;
    assert(sum1_out='0' and sum2_out='1' and sum3_out='0' and carry_out='1') report "Fail" severity error;
    
    a1_in <= '1';
    a2_in <= '1';
    a3_in <= '1';
    b1_in <= '0';
    b2_in <= '0';
    b3_in <= '1';
    wait for 1 ns;
    assert(sum1_out='1' and sum2_out='1' and sum3_out='0' and carry_out='1') report "Fail" severity error;
    
    a1_in <= '1';
    a2_in <= '1';
    a3_in <= '1';
    b1_in <= '1';
    b2_in <= '0';
    b3_in <= '1';
    wait for 1 ns;
    assert(sum1_out='0' and sum2_out='0' and sum3_out='1' and carry_out='1') report "Fail" severity error;
    
    a1_in <= '0';
    a2_in <= '1';
    a3_in <= '1';
    b1_in <= '0';
    b2_in <= '1';
    b3_in <= '1';
    wait for 1 ns;
    assert(sum1_out='0' and sum2_out='0' and sum3_out='1' and carry_out='1') report "Fail" severity error;
    
    a1_in <= '1';
    a2_in <= '1';
    a3_in <= '1';
    b1_in <= '0';
    b2_in <= '1';
    b3_in <= '1';
    wait for 1 ns;
    assert(sum1_out='1' and sum2_out='0' and sum3_out='1' and carry_out='1') report "Fail" severity error;
    
    a1_in <= '1';
    a2_in <= '1';
    a3_in <= '1';
    b1_in <= '1';
    b2_in <= '1';
    b3_in <= '1';
    wait for 1 ns;
    assert(sum1_out='0' and sum2_out='1' and sum3_out='1' and carry_out='1') report "Fail" severity error;

    -- Clear inputs
    a1_in <= '0';
    a2_in <= '0';
    a3_in <= '0';
    b1_in <= '0';
    b2_in <= '0';
    b3_in <= '0';

    assert false report "Test done." severity note;
    wait;
  end process;
end tb;