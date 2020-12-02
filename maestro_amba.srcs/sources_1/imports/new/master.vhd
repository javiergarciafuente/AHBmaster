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
library grlib;
use grlib.amba.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ahbmaster is
    generic (
        hindex : integer := 0);
    port (
        rst   : in  std_ulogic;
        clk   : in  std_ulogic;
        ahbmi : in ahb_mst_in_type;
        ahbmo : out ahb_mst_out_type;
        dmai  : in ahb_dma_in_type;
        dmao  : out ahb_dma_out_type
    );
end ahbmaster;

architecture Behavioral of ahbmaster is

signal fase_datos       : std_ulogic;
signal escritura        : std_ulogic;
signal lectura          : std_ulogic;
signal addr_salida      : std_logic_vector(31 downto 0);
signal data_salida      : std_logic_vector(31 downto 0);
signal busreq_salida    : std_ulogic;
signal size_salida      : std_logic_vector(2 downto 0);
signal write_salida     : std_ulogic;
begin

--Este proceso indica el comienzo de la transferencia, 
--en el se desgrana si es de escritura o lectura y si todo esta listo para comenzar
process (dmai, rst)

begin
    if rst = '1' then
        lectura <= '0';
        escritura <= '0';
    else
        if dmai.start = '1' then
            if dmai.write = '1' then
                escritura <= '1';
            else
                lectura <= '1';
            end if;   
            busreq_salida <= '1';     
        end if;
    end if;
end process;

--Fase address, un solo ciclo, coloca la señal address en la salida de la interfaz m-s
process (clk, rst, escritura, lectura, ahbmi) 
    
begin
    if rst = '1' then
        addr_salida <= (others => '0');
        write_salida <= '0';
        size_salida <= (others => '0');
        fase_datos <= '0';
    else
        if ahbmi.hgrant(hindex) = '1' then
            if ahbmi.hready = '1' and (escritura = '1' or lectura = '1') then
                if clk'event and clk = '1' then
                    addr_salida <= dmai.address;
                    write_salida <= dmai.write;
                    size_salida <= dmai.size;
                    fase_datos <= '1';
                end if;
            end if;
        end if;
    end if;
end process;

--Fase data, dependiendo si es una escritura o una lectura pone los datos en la salida de la interfaz m-s o en la de DMA
process (clk, rst, fase_datos)
begin
    if rst = '1' then
        data_salida <= (others => '0');
        dmao.rdata <=(others => '0');
    else
        if ahbmi.hready = '1' and fase_datos = '1' then --and ahbmi.hgrant(hindex) = '1' then
            if clk'event and clk = '1' then
                if escritura = '1' then
                    data_salida <= dmai.wdata; --pasa de interfaz dma a interfaz m-s
                elsif lectura = '1' then
                    dmao.rdata <= ahbmi.hrdata; --pasa de interfaz m-s a interfaz dma
                end if;
                --ahbmoaux.hbusreq <= '0';
                --lectura <= '0';
                --escritura <= '0';
            end if;
        end if;
    end if;
end process;

--Proceso para actualizar los campos de la salida de la interfaz m-s
process (rst,busreq_salida,data_salida,addr_salida,write_salida,size_salida)

begin
    if rst = '1' then
        ahbmo <= ( '0', '0', "00", zx,'0', "000", "000", "0000", zahbdw, zxirq(NAHBIRQ-1 downto 0), (others => zx), 0);
    else
        ahbmo.hbusreq <= busreq_salida;
        ahbmo.hwdata <= data_salida;
        ahbmo.haddr <= addr_salida;
        ahbmo.hwrite <= write_salida;
        ahbmo.hsize <= size_salida;
    end if;
end process;

end Behavioral;
