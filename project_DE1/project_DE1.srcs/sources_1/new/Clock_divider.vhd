----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2022 04:52:08 PM
-- Design Name: 
-- Module Name: Clock_divider - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Clock_divider is
    Port ( clk1 : in STD_LOGIC;
           clk : out STD_LOGIC);
end Clock_divider;

architecture Behavioral of Clock_divider is

signal count : integer :=0;
signal b : std_logic :='0';

begin

process(clk1) 
begin
if(rising_edge(clk1)) then
count <=count+1;
if(count = 50000000) then
b <= not b;
count <=0;

end if;
end if;
clk<=b;
end process;
end Behavioral;


