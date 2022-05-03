----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2022 03:52:37 PM
-- Design Name: 
-- Module Name: signal_catcher - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity signal_catcher is
 Port ( 
 RESET : in STD_LOGIC;
 clk1Hz : in std_logic;
 clkout : out std_logic;
 GENERATOR_SIGNAL : IN STD_LOGIC
);
end signal_catcher;

architecture Behavioral of signal_catcher is
signal f_counter : unsigned(1 downto 0) := (others => '0');
signal b : std_logic :='0';
begin

process(RESET,clk1Hz,GENERATOR_SIGNAL)
begin

 if (rising_edge (clk1Hz) OR RESET = '1') 
 then f_counter <= 0;
 elsif(rising_edge(GENERATOR_SIGNAL))
 then f_counter <= f_counter +1;
 end if;
 end process;





end Behavioral;
