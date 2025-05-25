--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:01:13 04/30/2025
-- Design Name:   
-- Module Name:   /home/ise/xilinx_Design_projects/uartModule/Tb_TX.vhd
-- Project Name:  uartModule
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: uart_TX
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
ENTITY Tb_TX IS
END Tb_TX;
 
ARCHITECTURE behavior OF Tb_TX IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT uart_TX
    PORT(
         data_in : IN  std_logic_vector(7 downto 0);
         en : IN  std_logic;
         clk : IN  std_logic;
         parity_type : IN  std_logic;
         parity_en : IN  std_logic;
         data_out : OUT  std_logic;
         busy : OUT  std_logic;
         done : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');
   signal en : std_logic := '0';
   signal clk : std_logic := '0';
   signal parity_type : std_logic := '0';
   signal parity_en : std_logic := '0';

 	--Outputs
   signal data_out : std_logic;
   signal busy : std_logic;
   signal done : std_logic;

   -- Clock period definitions
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: uart_TX PORT MAP (
          data_in => data_in,
          en => en,
          clk => clk,
          parity_type => parity_type,
          parity_en => parity_en,
          data_out => data_out,
          busy => busy,
          done => done
        );
		  
		  
		  
		  
		  
		process
begin


clk<= '0';
 wait for 50 ns;
 clk <= '1';
 wait for 50 ns;

end process;


process
begin


en<= '1';
parity_en <= '1';
 wait ;
 
end process		  		  
		  
		  		  
		  
process
begin

 
 data_in<=X"ab";
 wait ;
 
end process				  
		  





		  

   

END;
