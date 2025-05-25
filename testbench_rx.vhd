--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:22:56 05/09/2025
-- Design Name:   
-- Module Name:   /home/ise/xilinx_Design_projects/Sec5_UART/testbench_rx.vhd
-- Project Name:  Sec5_UART
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UART_RX
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testbench_rx IS
END testbench_rx;
 
ARCHITECTURE behavior OF testbench_rx IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART_RX
    PORT(
         clk : IN  std_logic;
         data_in : IN  std_logic;
         done : OUT  std_logic;
         data_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal data_in : std_logic := '0';

 	--Outputs
   signal done : std_logic;
   signal data_out : std_logic;

   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART_RX PORT MAP (
          clk => clk,
          data_in => data_in,
          done => done,
          data_out => data_out
        );

 process
	begin
	
	clk<='1';
	wait for 50 ns;
   clk<='0';
	wait for 50 ns;
	
	end process;
	
 process
	 begin
	
	data_in<='0';
	wait for 20000 ns;
	
	data_in <= '1';
	wait for 20000 ns;
	data_in <= '0';
	wait for 20000 ns;
	data_in <= '1';
	wait for 20000 ns;
	data_in <= '1';
	wait for 20000 ns;
	data_in <= '0';
	wait for 20000 ns;
	data_in <= '1';
	wait for 20000 ns;
	data_in <= '0';
	wait for 20000 ns;
	data_in <= '1';
	wait for 20000 ns;
	
data_in <= '1';
	wait for 20000 ns;
	end process;




END;
