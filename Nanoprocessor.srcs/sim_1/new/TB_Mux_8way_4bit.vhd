----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/11/2025 03:17:15 PM
-- Design Name: 
-- Module Name: TB_Mux_8way_4bit - Behavioral
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

entity TB_Mux_8way_4bit is
--  Port ( );
end TB_Mux_8way_4bit;

architecture Behavioral of TB_Mux_8way_4bit is

component Mux_8way_4bit is
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           L0 : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit Input Line 0
           L1 : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit Input Line 1
           L2 : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit Input Line 2
           L3 : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit Input Line 3
           L4 : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit Input Line 4
           L5 : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit Input Line 5
           L6 : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit Input Line 6
           L7 : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit Input Line 7
           EN : in STD_LOGIC;
           OL : out STD_LOGIC_VECTOR (3 downto 0)); -- 4-bit output line
end component;

signal s : std_logic_vector (2 downto 0);
signal en : std_logic;
signal ol : STD_LOGIC_VECTOR (3 downto 0);

begin

    UUT: Mux_8way_4bit
        port map(
        S => s,
        L0 => "0000",
        L1 => "0001",
        L2 => "1010",
        L3 => "0011",
        L4 => "1100",
        L5 => "0101",
        L6 => "0110",
        L7 => "1111",
        EN => en,
        OL => ol);

    process
    begin
        en <='1' ;
        s <= "000";
        wait for 100 ns;
        
        s <= "010";
        wait for 100ns;
        
        s <= "111";
        wait for 100ns;
        
        s <= "011";
        wait;
    end process;
end Behavioral;


