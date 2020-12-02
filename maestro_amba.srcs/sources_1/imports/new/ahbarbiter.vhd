----------------------------------------------------------------------------------
-- Engineer: Javier Garcia
-- 
-- Design Name: 
-- Module Name: master - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
library grlib;
use grlib.amba.all;


-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ahbarbiter is
    port (
        rst         : in  std_ulogic;
        clk         : in  std_ulogic;
        hbusreqn    : in  std_logic_vector(0 to NAHBMST-1);
        hlockn      : in  std_logic_vector(0 to NAHBMST-1);
        hgrantn     : out std_logic_vector(0 to NAHBMST-1);
        hmaster     : out std_logic_vector(3 downto 0)
    );
end ahbarbiter;

architecture Behavioral of ahbarbiter is
signal index        : natural := 0;
signal sig_lock     : std_logic := '0';
begin

process (clk, rst, hlockn) --checkeo de las peticiones. El orden de prioridad es fijo siendo el numero 0 el mas prioritario y el numero n el menos
variable locked : boolean := false;
begin
    if rst = '1' then
        index <= 0;
        hgrantn(0) <= '1';
        hgrantn <= (others => '0');
    else
        for i in 0 to NAHBMST-1 loop
            if i = NAHBMST-1 and hlockn(i) = '0' then
                locked := false;
                sig_lock <= '0';
                exit;
            end if;
            if hlockn(i) = '1' then
                locked := true;
                sig_lock <= '1';
                exit;
            end if;
        end loop;
        if clk'event and clk = '1' then
            for j in 0 to NAHBMST-1 loop
                if j = NAHBMST-1 and hbusreqn(j) = '0' then
                    index <= 0;
                    --h := 0;
                    exit;
                end if;
                if hbusreqn(j) = '1' then
                    index <= j;
                    --h := j;
                    exit;
                end if;
            end loop;
            if not locked then
                hgrantn <= (others => '0');
                hgrantn(index) <= '1';
            else
                if hlockn(index) = '1' then
                    hgrantn <= (others => '0');
                    hgrantn(index) <= '1';
                end if;
            end if;
        end if;
    end if;
    
end process;

process (index, clk, rst, sig_lock)
begin
    if rst = '1' then
        hmaster <= std_logic_vector(to_unsigned(0, hmaster'length));
    else
        if clk'event and clk = '1' then
            if sig_lock = '0' then
                hmaster <= std_logic_vector(to_unsigned(index, hmaster'length));
            else
                if hlockn(index) = '1' then
                    hmaster <= std_logic_vector(to_unsigned(index, hmaster'length));
                end if;
            end if;
        end if;
    end if;
end process;

end Behavioral;
