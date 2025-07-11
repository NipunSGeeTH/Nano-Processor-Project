----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2025 06:05:01 PM
-- Design Name: 
-- Module Name: Program_ROM - Behavioral
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
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;


entity Program_ROM is
    Port ( address : in STD_LOGIC_VECTOR (2 downto 0);
           data : out STD_LOGIC_VECTOR (11 downto 0));
end Program_ROM;

architecture Behavioral of Program_ROM is

type rom_type is array (0 to 7) of std_logic_vector(11 downto 0); 

    signal Program_ROM : rom_type := ( 
        "101110000110",  --MOVI R7, 6
        "011110000000",   --NEG R7
        "100010000011",  --MOVi R1, 3
        "001110010000", --ADD R7, R1 
        "001110010000",--ADD R7, R1 
        "111110000011",    --JZR R7, 3
        "110000000111",    --JZR R0, 7
        "110000000111"    --JZR R0, 7
        );


begin
    data <= Program_ROM(to_integer(unsigned(address))); 


end Behavioral;
