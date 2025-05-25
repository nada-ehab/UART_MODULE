----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:27:39 05/09/2025 
-- Design Name: 
-- Module Name:    uart_reciever - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity uart_reciever is
    Port ( clk : in  STD_LOGIC;
           data_in : in  STD_LOGIC;
           done : out  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end uart_reciever;

architecture Behavioral of uart_reciever is


signal clk_count  : unsigned(7 downto 0) := (others => '0');
signal bit_count  : unsigned(3 downto 0) := (others => '0');
signal data_reg   : std_logic_vector(7 downto 0) := (others => '0');
signal start_bit  : std_logic := '0';
signal busy       : std_logic := '0';

begin


process(clk)
begin





 if rising_edge(clk) then

        -- Start bit detection
        if busy = '0' and data_in = '0' then
            busy <= '1';
            clk_count <= (others => '0');
            bit_count <= (others => '0');
            done <= '0';
        elsif busy = '1' then
		  
		              if clk_count < to_unsigned(199, 8) then
                clk_count <= clk_count + 1;
            else
                clk_count <= (others => '0');
					 
                if bit_count < to_unsigned(8, 4) then
                    data_reg(to_integer(bit_count)) <=data_in;
                    bit_count <= bit_count + 1;
                else
                    data_out <= data_reg;
                    done <= '1';
                    busy <= '0';
                end if;

            end if;

        end if;
    end if;
		  
		  






end process;

end Behavioral;

