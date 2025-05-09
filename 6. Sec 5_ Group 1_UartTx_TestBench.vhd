--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:54:34 04/28/2025
-- Design Name:   
-- Module Name:   /home/ise/xilinx_Design_projects/UART_Module/TB_TX.vhd
-- Project Name:  UART_Module
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: uart_tx
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
 
ENTITY TB_TX IS
END TB_TX;
 
ARCHITECTURE behavior OF TB_TX IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT uart_tx
    PORT(
         data_in : IN  std_logic_vector(7 downto 0);
         en : IN  std_logic;
         clk : IN  std_logic;
         data_out : OUT  std_logic;
         busy : OUT  std_logic;
         done : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');
   signal en : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal data_out : std_logic;
   signal busy : std_logic;
   signal done : std_logic;

   -- Clock period definitions
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: uart_tx PORT MAP (
          data_in => data_in,
          en => en,
          clk => clk,
          data_out => data_out,
          busy => busy,
          done => done
        );


process

begin

clk <='1';
wait for 50 ns;
clk <= '0';
wait for 50 ns;


end process;


process

begin
en <='1';
wait ;

end process;


process

begin

data_in <=X"ab";
wait ;
end process;

   
END;
