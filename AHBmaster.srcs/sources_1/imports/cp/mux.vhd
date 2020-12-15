----------------------------------------------------------------------------------
-- Engineer: Javier Garcia
--
-- Design Name: 
-- Module Name: mux - Behavioral
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
library grlib;
use grlib.amba.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux is
    Port (
         clk        : in std_ulogic;
         rst        : in std_ulogic;
         HADDR_M1   : in std_logic_vector(31 downto 0);
         HADDR_M2   : in std_logic_vector(31 downto 0);
         HADDR_M3   : in std_logic_vector(31 downto 0);
         HADDR_M4   : in std_logic_vector(31 downto 0);
         HADDR_M5   : in std_logic_vector(31 downto 0);
         HADDR_M6   : in std_logic_vector(31 downto 0);
         HADDR_M7   : in std_logic_vector(31 downto 0);
         HADDR_M8   : in std_logic_vector(31 downto 0);
         HADDR_M9   : in std_logic_vector(31 downto 0);
         HADDR_M10  : in std_logic_vector(31 downto 0);
         HADDR_M11  : in std_logic_vector(31 downto 0);
         HADDR_M12  : in std_logic_vector(31 downto 0);
         HADDR_M13  : in std_logic_vector(31 downto 0);
         HADDR_M14  : in std_logic_vector(31 downto 0);
         HADDR_M15  : in std_logic_vector(31 downto 0);
         HADDR_M16  : in std_logic_vector(31 downto 0);
         HWDATA_M1  : in std_logic_vector(31 downto 0);
         HWDATA_M2  : in std_logic_vector(31 downto 0);
         HWDATA_M3  : in std_logic_vector(31 downto 0);
         HWDATA_M4  : in std_logic_vector(31 downto 0);
         HWDATA_M5  : in std_logic_vector(31 downto 0);
         HWDATA_M6  : in std_logic_vector(31 downto 0);
         HWDATA_M7  : in std_logic_vector(31 downto 0);
         HWDATA_M8  : in std_logic_vector(31 downto 0);
         HWDATA_M9  : in std_logic_vector(31 downto 0);
         HWDATA_M10 : in std_logic_vector(31 downto 0);
         HWDATA_M11 : in std_logic_vector(31 downto 0);
         HWDATA_M12 : in std_logic_vector(31 downto 0);
         HWDATA_M13 : in std_logic_vector(31 downto 0);
         HWDATA_M14 : in std_logic_vector(31 downto 0);
         HWDATA_M15 : in std_logic_vector(31 downto 0);
         HWDATA_M16 : in std_logic_vector(31 downto 0);
         HMASTER    : in std_logic_vector(3 downto 0);
         HADDR      : out std_logic_vector(31 downto 0);
         HWDATA     : out std_logic_vector(31 downto 0)
        );
end mux;

architecture Behavioral of mux is
signal  master_data   : std_logic_vector(3 downto 0);
begin

--mux para haddr, se otorga antes que el de hdata
process (rst, HMASTER, HADDR_M1, HADDR_M2, HADDR_M3, HADDR_M4, HADDR_M5, HADDR_M6, 
        HADDR_M7, HADDR_M8, HADDR_M9, HADDR_M10, HADDR_M11, HADDR_M12, HADDR_M13, HADDR_M14, HADDR_M15, HADDR_M16)
begin
    if rst = '1' then
        HADDR <= (others => '0');
    else
        case HMASTER is                
            when "0000" =>            
                HADDR <= HADDR_M1;
            when "0001" =>             
                HADDR <= HADDR_M2;         
            when "0010" =>             
                HADDR <= HADDR_M3;
            when "0011" =>            
                HADDR <= HADDR_M4;
            when "0100" =>                  
                HADDR <= HADDR_M5;
            when "0101" =>            
                HADDR <= HADDR_M6;
            when "0110" =>             
                HADDR <= HADDR_M7;
            when "0111" =>              
                HADDR <= HADDR_M8;
            when "1000" =>                   
                HADDR <= HADDR_M9; 
            when "1001" =>                  
                HADDR <= HADDR_M10;
            when "1010" =>            
                HADDR <= HADDR_M11;
            when "1011" =>               
                HADDR <= HADDR_M12;
            when "1100" =>                  
                HADDR <= HADDR_M13;
            when "1101" =>                 
                HADDR <= HADDR_M14;
            when "1110" =>                
                HADDR <= HADDR_M15;
            when others =>               
                HADDR <= HADDR_M16;
        end case;
    end if;
end process;

process (HMASTER, clk, rst)

begin
    if rst = '1' then
        master_data <= (others => '0');
    else
        if clk'event and clk = '1' then
            master_data <= HMASTER;
        end if;
    end if;
    
end process;

--mux para hdata
process (rst, master_data, HWDATA_M1, HWDATA_M2, HWDATA_M3, HWDATA_M4, HWDATA_M5, HWDATA_M6, 
        HWDATA_M7, HWDATA_M8, HWDATA_M9, HWDATA_M10, HWDATA_M11, HWDATA_M12, HWDATA_M13, HWDATA_M14, HWDATA_M15, HWDATA_M16)
begin
    if rst = '1' then
        HWDATA <= (others => '0');
    else
        case master_data is                
            when "0000" =>
                HWDATA <= HWDATA_M1;
            when "0001" =>
                HWDATA <= HWDATA_M2;           
            when "0010" =>
                HWDATA <= HWDATA_M3;
            when "0011" =>        
                HWDATA <= HWDATA_M4;
            when "0100" =>        
                HWDATA <= HWDATA_M5;
            when "0101" =>         
                HWDATA <= HWDATA_M6;
            when "0110" =>        
                HWDATA <= HWDATA_M7;
            when "0111" =>        
                HWDATA <= HWDATA_M8;
            when "1000" =>        
                HWDATA <= HWDATA_M9;  
            when "1001" =>         
                HWDATA <= HWDATA_M10;
            when "1010" =>          
                HWDATA <= HWDATA_M11;
            when "1011" =>         
                HWDATA <= HWDATA_M12;
            when "1100" =>         
                HWDATA <= HWDATA_M13;
            when "1101" =>         
                HWDATA <= HWDATA_M14;
            when "1110" =>         
                HWDATA <= HWDATA_M15;
            when others =>         
                HWDATA <= HWDATA_M16;
        end case;
    end if;
end process;

end Behavioral;
