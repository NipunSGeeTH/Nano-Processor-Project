----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2025 10:12:23 PM
-- Design Name: 
-- Module Name: Instruction_Decoder - Behavioral
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

entity Instruction_Decoder is
    Port (
        Instruction      : in STD_LOGIC_VECTOR (11 downto 0);
        Jump_reg_val     : in STD_LOGIC_VECTOR (3 downto 0);
        Reg_Sel_A        : out STD_LOGIC_VECTOR (2 downto 0);
        Reg_Sel_B        : out STD_LOGIC_VECTOR (2 downto 0);
        Reg_En           : out STD_LOGIC_VECTOR (2 downto 0);
        Flag_Reg_En      : out STD_LOGIC;
        Jump_Address     : out STD_LOGIC_VECTOR (2 downto 0);
        Jump_Flag        : out STD_LOGIC;
        Add_Sub_Sel      : out STD_LOGIC;
        Load_Sel         : out STD_LOGIC;
        Immediate_Value  : out STD_LOGIC_VECTOR (3 downto 0)
    );
end Instruction_Decoder;

architecture Behavioral of Instruction_Decoder is
begin
    process (Instruction, Jump_reg_val)
        variable Op_code : STD_LOGIC_VECTOR(1 downto 0);
    begin
        Op_code := Instruction(11 downto 10);

        -- Default values for outputs
        Reg_Sel_A       <= "000";
        Reg_Sel_B       <= "000";
        Reg_En          <= "000";
        Flag_Reg_En     <= '0';
        Jump_Address    <= "000";
        Jump_Flag       <= '0';
        Add_Sub_Sel     <= '0';
        Load_Sel        <= '0';
        Immediate_Value <= "0000";

        case Op_code is
            when "00" =>  -- ADD
                Reg_Sel_A       <= Instruction(9 downto 7);
                Reg_Sel_B       <= Instruction(6 downto 4);
                Add_Sub_Sel     <= '0';
                Load_Sel        <= '1';
                Reg_En          <= Instruction(9 downto 7);
                Flag_Reg_En     <= '1';

            when "01" =>  -- NEG (Subtract)
                Reg_Sel_A       <= Instruction(9 downto 7);
                Reg_Sel_B       <= Instruction(6 downto 4);
                Add_Sub_Sel     <= '1';
                Load_Sel        <= '1';
                Reg_En          <= Instruction(9 downto 7);
                Flag_Reg_En     <= '1';

            when "10" =>  -- MOVI
                Load_Sel        <= '0';
                Reg_En          <= Instruction(9 downto 7);
                Immediate_Value <= Instruction(3 downto 0);
                Flag_Reg_En     <= '0';

            when "11" =>  -- JZR
                if Jump_reg_val = "0000" then
                    Jump_Flag    <= '1';
                    Jump_Address <= Instruction(2 downto 0);
                else
                    Jump_Flag    <= '0';
                end if;

            when others =>
                -- All outputs already defaulted above
                null;
        end case;
    end process;
end Behavioral;



