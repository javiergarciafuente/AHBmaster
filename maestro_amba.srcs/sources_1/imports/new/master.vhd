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
library xil_defaultlib;
use xil_defaultlib.InterfazRV32AHB.all;

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
        dmai  : in RV32_to_AHB;
        dmao  : out AHB_to_RV32
    );
end ahbmaster;

architecture Behavioral of ahbmaster is

signal escritura        : std_ulogic;
signal lectura          : std_ulogic;
signal addr_salida      : std_logic_vector(31 downto 0);
signal data_buffer      : std_logic_vector(31 downto 0);
signal busreq_salida    : std_ulogic;
signal size_salida      : std_logic_vector(2 downto 0);
signal write_salida     : std_ulogic;
signal finish           : std_logic := '0';
signal addr_grant       : std_logic := '0';
signal data_grant       : std_logic := '0';
begin

process (clk, rst, ahbmi)
begin
    if rst = '1' then
        addr_grant <= '0';
        data_grant <= '0';
    else
        if ahbmi.hgrant(hindex) = '1' then
            addr_grant <= '1';
            data_grant <= '1' after 10ns;
        elsif ahbmi.hgrant(hindex) = '0' then
            addr_grant <= '0';
            data_grant <= '0' after 10ns;
        end if;
    end if;
end process; 
 
 
--En este proceso se desgrana si es una operacion de escritura o lectura, despues se solicita al arbitro el bus para transmitir
process (dmai, rst)
begin
    if rst = '1' then
        lectura <= '0';
        escritura <= '0';
    else
        if dmai.start = '1' then
            if dmai.write = '1' then
                escritura <= '1';
                lectura <= '0';
            else
                lectura <= '1';
                escritura <= '0';
            end if;   
            busreq_salida <= '1';
        else
            busreq_salida <= '0';
        end if;
    end if;
end process;

--Despues de determinar el tipo de operacion y habiendo recibido permiso para proceder, se realiza la fase address
process (clk, rst, escritura, lectura, ahbmi) 
    
begin
    if rst = '1' then
        addr_salida <= (others => '0');
        write_salida <= '0';
        size_salida <= (others => '0');
    else
        if addr_grant = '1' and ahbmi.hready = '1' then
            if clk'event and clk = '1' then
                addr_salida <= dmai.address;
                write_salida <= dmai.write;
                size_salida <= dmai.size;
            end if;
        end if;
    end if;
end process;

--Tras la fase address comienza la fase data, dependiendo si es una escritura o una lectura pone los datos en la salida de la interfaz m-s o en la de DMA
process (clk, rst)
begin
    if rst = '1' then
        data_buffer <= (others => '0');
        finish <= '0';
    else
        if clk'event and clk = '1' then
            if ahbmi.hready = '1' and data_grant = '1' then
                if escritura = '1' then
                    data_buffer <= dmai.wdata; --leemos los datos a escribir en ahbmo
                    finish <= '1';
                elsif lectura = '1' then
                    data_buffer <= ahbmi.hrdata; --leemos los datos que ha de recibir dmao
                    finish <= '1';
                end if;
            else
                finish <= '0';
            end if;
        end if;
    end if;
end process;

--Proceso para actualizar los campos de la salida de la interfaz m-s
process (rst,clk,busreq_salida,data_buffer,addr_salida,write_salida,size_salida,data_grant)

begin
    if rst = '1' then
        ahbmo <= ( '0', '0', "00", zx,'0', "000", "000", "0000", zahbdw, zxirq(NAHBIRQ-1 downto 0), (others => zx), 0);
    else
        ahbmo.hbusreq <= busreq_salida;
        ahbmo.hlock <= '0'; --todo
        ahbmo.htrans <= (others => '0');
        ahbmo.haddr <= addr_salida;
        ahbmo.hwrite <= write_salida;
        ahbmo.hsize <= size_salida;
        ahbmo.hburst <= (others => '0');
        ahbmo.hprot <= (others => '0');
        ahbmo.hirq <= (others => '0');
        ahbmo.hconfig <= (others => zx);
        ahbmo.hindex <= 0;
        if data_grant = '1' and write_salida = '1' then
            ahbmo.hwdata <= data_buffer;
        end if;
    end if;
end process;

--Proceso para actualizar los campos de la salida de la interfaz DMA
process (rst,clk,data_buffer, finish)

begin
    if rst = '1' then
        dmao <= ((others => '0'), '0');
    else
        dmao.finish <= finish;
        if data_grant = '1' and write_salida = '0' then
            dmao.rdata <= data_buffer;
        end if;
    end if;
end process;

end Behavioral;
