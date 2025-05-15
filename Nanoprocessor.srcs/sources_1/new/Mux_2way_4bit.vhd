----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2025 02:40:52 PM
-- Design Name: 
-- Module Name: Mux_2way_4bit - Behavioral
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

entity Mux_2way_4bit is
    Port (
        A   : in  STD_LOGIC_VECTOR(3 downto 0);  -- 4-bit input A
        B   : in  STD_LOGIC_VECTOR(3 downto 0);  -- 4-bit input B
        SEL : in  STD_LOGIC;                      -- Selection line
        Y   : out STD_LOGIC_VECTOR(3 downto 0)   -- 4-bit output
    );
end Mux_2way_4bit;

architecture Behavioral of Mux_2way_4bit is
begin
    process(A, B, SEL)
    begin
        case SEL is
            when '0'    => Y <= A;
            when '1'    => Y <= B;
            when others => Y <= (others => '0');  -- Default case for unknown SEL
        end case;
    end process;
end Behavioral;