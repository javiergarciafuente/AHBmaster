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

signal w                : std_ulogic;
signal r                : std_ulogic;
signal addr_out         : std_logic_vector(31 downto 0);
signal addr_next        : std_logic_vector(31 downto 0);
signal data_buffer_next : std_logic_vector(31 downto 0);
signal data_buffer      : std_logic_vector(31 downto 0);
signal busreq_out       : std_ulogic;
signal size_out         : std_logic_vector(2 downto 0);
signal size_next        : std_logic_vector(2 downto 0);
signal write_data       : std_ulogic;
signal write_next       : std_ulogic;
signal write_out        : std_ulogic;
signal finish           : std_logic := '0';
signal finish_next      : std_logic := '0';
signal addr_grant       : std_logic := '0';
signal data_grant       : std_logic := '0';
type state_grant_type is (s0, s1, s2, s3);
signal state_grant      : state_grant_type;
signal lock_out         : std_logic;
begin


process (clk, rst)
begin
  if rst = '1' then
     state_grant <= s0;
  elsif (clk'event and clk = '1') then
     case state_grant is
        when s0=>
           if ahbmi.hgrant(hindex) = '1' and ahbmi.hready = '1' then
              state_grant <= s1;
           else
              state_grant <= s0;
           end if;
        when s1=>
           if ahbmi.hready = '1' then
              state_grant <= s2;
           end if;
        when s2=>
           if ahbmi.hgrant(hindex)= '0' then
              state_grant <= s3;
           else
              state_grant <= s2;
           end if;
        when s3=>
              state_grant <= s0;
     end case;
  end if;
end process;
   
process (state_grant)
begin
    case state_grant is
     when s0 =>
        data_grant <= '0';
        addr_grant <= '0';
     when s1 =>
        data_grant <= '0';
        addr_grant <= '1';
     when s2 =>
        data_grant <= '1';
        addr_grant <= '1';
     when s3 =>
        data_grant <= '1';
        addr_grant <= '0';
    end case;
end process;

--En este proceso se desgrana si es una operacion de escritura o lectura, despues se solicita al arbitro el bus para transmitir
process (clk, dmai, rst, ahbmi)
begin
    if rst = '1' then
        r <= '0';
        w <= '0';
        lock_out <= '0';
        busreq_out <= '0';
    else
        if clk'event and clk = '1' then
            if dmai.start = '1' and ahbmi.hready = '1' then
                if dmai.write = '1' then
                    w <= '1';
                    r <= '0';
                else
                    r <= '1';
                    w <= '0';
                end if;
                if dmai.atomic = '1' then
                    lock_out <= '1';
                    busreq_out <= '1';
                else
                    lock_out <= '0';
                    busreq_out <= '1';
                end if;
            else
                busreq_out <= '0';
                lock_out <= '0';
            end if;
        end if;
    end if;
end process;

--Despues de determinar el tipo de operacion y habiendo recibido permiso para proceder, se realiza la fase address
process (rst, ahbmi, addr_grant, dmai)

begin
    if rst = '1' then
        addr_next <= (others => '0');
        write_next <= '0';
        size_next <= (others => '0');
    else
        if ahbmi.hready = '1' then
            addr_next <= dmai.address;
            write_next <= dmai.write;
            size_next <= dmai.size;
        end if;
    end if;
end process;

--Tras la fase address comienza la fase data, dependiendo si es una escritura o una lectura pone los datos en la salida de la interfaz m-s o en la de DMA
process (rst, ahbmi, dmai, w, r)
begin
    if rst = '1' then
        data_buffer_next <= (others => '0');
        finish_next <= '0';
    else
        if ahbmi.hready = '1' then
            if w = '1' then
                data_buffer_next <= dmai.wdata; --leemos los datos a escribir en ahbmo
                finish_next <= '1';
            elsif r = '1' then
                data_buffer_next <= ahbmi.hrdata; --leemos los datos que ha de recibir dmao
                finish_next <= '1';
            end if;
        else
            finish_next <= '0';
        end if;
    end if;
end process;

process (clk, rst, data_buffer_next, w, addr_next, ahbmi, write_next, size_next, finish_next)

begin
    if rst = '1' then
        data_buffer <= (others => '0');
        write_data <= '0';
        write_out <= '0';
        size_out <= (others => '0');
        addr_out <= (others => '0');
        finish <= '0';
    else
        if clk'event and clk = '1' then 
            if ahbmi.hready = '1' then
                data_buffer <= data_buffer_next;
                addr_out <= addr_next;
                size_out <= size_next;
                write_out <= write_next;
                write_data <= w;
                finish <= finish_next;
            end if;
        end if;
    end if;
end process;

--Proceso para actualizar los campos de la salida de la interfaz m-s
process (rst, busreq_out, lock_out, data_buffer, addr_out, write_out, size_out, data_grant, addr_grant, write_data, ahbmi)

begin
    if rst = '1' then
        ahbmo <= ( '0', '0', "00", zx,'0', "000", "000", "0000", zahbdw, zxirq(NAHBIRQ-1 downto 0), (others => zx), 0);
    else
            ahbmo.hbusreq <= busreq_out;
            ahbmo.hlock <= lock_out; 
            ahbmo.htrans <= (others => '0');
            if addr_grant = '1' then
                ahbmo.haddr <= addr_out;
            end if;
            ahbmo.hwrite <= write_out;
            ahbmo.hsize <= size_out;
            ahbmo.hburst <= (others => '0');
            ahbmo.hprot <= (others => '0');
            ahbmo.hirq <= (others => '0');
            ahbmo.hconfig <= (others => zx);
            ahbmo.hindex <= 0;
            if data_grant = '1' and write_data = '1' and ahbmi.hready = '1' then
                ahbmo.hwdata <= data_buffer;
            end if;
    end if;
end process;

--Proceso para actualizar los campos de la salida de la interfaz DMA
process (rst, data_buffer, finish, data_grant, write_data, ahbmi)

begin
    if rst = '1' then
        dmao <= ((others => '0'), '0');
    else
        dmao.finish <= finish;
        if data_grant = '1' and write_data = '0' and ahbmi.hready = '1' then
            dmao.rdata <= data_buffer;
        end if;
    end if;
end process;

end Behavioral;
