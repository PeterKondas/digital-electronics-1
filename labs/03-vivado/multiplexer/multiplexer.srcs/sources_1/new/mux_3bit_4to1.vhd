
-- Example of 2-bit binary comparator using the when/else
-- assignments.
-- EDA Playground
--
-- Copyright (c) 2020-Present Tomas Fryza
-- Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for 2-bit binary comparator
------------------------------------------------------------
entity multiplexer is
    port(
        a_i           : in std_logic_vector(2 - 1 downto 0);
        b_i           : in std_logic_vector(2 - 1 downto 0);
        c_i           : in std_logic_vector(2 - 1 downto 0);
        d_i           : in std_logic_vector(2 - 1 downto 0);
        sel_i         : in std_logic_vector(1 downto 0);
        f_0           : out std_logic_vector (2 - 1 downto 0)
    );
end entity multiplexer ;

------------------------------------------------------------
-- Architecture body for 2-bit binary comparator
------------------------------------------------------------
architecture Behavioral of multiplexer is
begin
with f_0 select 
    sel_i  <= a_i when "00",  -- If addr_i = "000" then y_o = a_i
           b_i when "01",
           c_i when "10",
           d_i when "11"
end architecture Behavioral;