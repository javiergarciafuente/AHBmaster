----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.12.2020 15:25:40
-- Design Name: 
-- Module Name: ahbprotocol_tb - Behavioral
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
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
library grlib;
use grlib.amba.all;
library xil_defaultlib;
use xil_defaultlib.InterfazRV32AHB.all;

entity ahbprotocol_tb is
end;

architecture bench of ahbprotocol_tb is

  component ahbarbiter
    port (
      clk           : in  std_logic;
      rst           : in  std_logic;
      hbusreqn      : in  std_logic_vector(0 to NAHBMST-1);
      hlockn        : in  std_logic_vector(0 to NAHBMST-1);
      hgrantn       : out std_logic_vector(0 to NAHBMST-1);
      hmaster       : out std_logic_vector(3 downto 0)
    );
  end component;
  
  component ahbmaster
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
  end component;
  
  component mux
    port (
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
  end component;

  signal clk: std_logic;
  signal rst: std_logic;
  signal HADDR: std_logic_vector(31 downto 0);
  signal HWDATA: std_logic_vector(31 downto 0);
  signal ahbmo1: ahb_mst_out_type := ( '0', '0', "00", zx,
   '0', "000", "000", "0000", zahbdw, zxirq(NAHBIRQ-1 downto 0), (others => zx), 0);
  signal ahbmi1: ahb_mst_in_type := (x"0000", '0', (others => '0'),
   zahbdw, zxirq(NAHBIRQ-1 downto 0), '0', '0', '0', '0', ztestin);
  signal ahbmo2: ahb_mst_out_type := ( '0', '0', "00", zx,
   '0', "000", "000", "0000", zahbdw, zxirq(NAHBIRQ-1 downto 0), (others => zx), 0);
  signal ahbmi2: ahb_mst_in_type := (x"0000", '0', (others => '0'),
   zahbdw, zxirq(NAHBIRQ-1 downto 0), '0', '0', '0', '0', ztestin);
  signal ahbmo3: ahb_mst_out_type := ( '0', '0', "00", zx,
   '0', "000", "000", "0000", zahbdw, zxirq(NAHBIRQ-1 downto 0), (others => zx), 0);
  signal ahbmi3: ahb_mst_in_type := (x"0000", '0', (others => '0'),
   zahbdw, zxirq(NAHBIRQ-1 downto 0), '0', '0', '0', '0', ztestin);
  signal hmaster: std_logic_vector(3 downto 0);
  signal hgrant: std_logic_vector(0 to NAHBMST-1);
  signal dmai1: RV32_to_AHB := ('0',(others => '0'), '0', (others => '0'),(others => '0'),'0','0');
  signal dmao1: AHB_to_RV32 := ((others => '0'),'0');
  signal dmai2: RV32_to_AHB := ('0',(others => '0'), '0', (others => '0'),(others => '0'),'0','0');
  signal dmao2: AHB_to_RV32 := ((others => '0'),'0');
  signal dmai3: RV32_to_AHB := ('0',(others => '0'), '0', (others => '0'),(others => '0'),'0','0');
  signal dmao3: AHB_to_RV32 := ((others => '0'),'0');

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: ahbarbiter port map (  clk           => clk,
                              rst           => rst,
                              hbusreqn(0)  => ahbmo1.hbusreq,
                              hbusreqn(1)  => ahbmo2.hbusreq,    
                              hbusreqn(2)  => ahbmo3.hbusreq,    
                              hbusreqn(3 to NAHBMST-1)   =>  (others => '0'),                       
                              hlockn(0)    => ahbmo1.hlock,  
                              hlockn(1)    => ahbmo2.hlock,    
                              hlockn(2)    => ahbmo3.hlock,  
                              hlockn(3 to NAHBMST-1)   =>  (others => '0'),
                              hgrantn       => hgrant,
                              hmaster       => HMASTER);
                              
  uut1: ahbmaster   generic map(hindex => 0)
                    port map ( clk       => clk,
                              rst       => rst,
                              ahbmi     => ahbmi1,
                              ahbmo     => ahbmo1,    
                              dmai      => dmai1,                       
                              dmao      => dmao1);
                              
  uut2: ahbmaster   generic map(hindex => 1)
                    port map ( clk       => clk,
                              rst       => rst,
                              ahbmi     => ahbmi2,
                              ahbmo     => ahbmo2,    
                              dmai      => dmai2,                       
                              dmao      => dmao2);
                              
  uut3: ahbmaster   generic map(hindex => 2)
                    port map ( clk       => clk,
                              rst       => rst,
                              ahbmi     => ahbmi3,
                              ahbmo     => ahbmo3,    
                              dmai      => dmai3,                       
                              dmao      => dmao3);
                              
  uut4: mux port map (        clk         => clk,
                              rst         =>  rst,
                              HADDR_M1    => ahbmo1.haddr,
                              HADDR_M2    => ahbmo2.haddr,
                              HADDR_M3    => ahbmo3.haddr,
                              HADDR_M4    => (others => '0'),
                              HADDR_M5    => (others => '0'),
                              HADDR_M6    => (others => '0'),
                              HADDR_M7    => (others => '0'),
                              HADDR_M8    => (others => '0'),
                              HADDR_M9    => (others => '0'),
                              HADDR_M10   => (others => '0'),
                              HADDR_M11   => (others => '0'),
                              HADDR_M12   => (others => '0'),
                              HADDR_M13   => (others => '0'),
                              HADDR_M14   => (others => '0'),
                              HADDR_M15   => (others => '0'),
                              HADDR_M16   => (others => '0'),
                              HWDATA_M1   => ahbmo1.hwdata,
                              HWDATA_M2   => ahbmo2.hwdata,
                              HWDATA_M3   => ahbmo3.hwdata,
                              HWDATA_M4   => (others => '0'),
                              HWDATA_M5   => (others => '0'),
                              HWDATA_M6   => (others => '0'),
                              HWDATA_M7   => (others => '0'),
                              HWDATA_M8   => (others => '0'),
                              HWDATA_M9   => (others => '0'),
                              HWDATA_M10  => (others => '0'),
                              HWDATA_M11  => (others => '0'),
                              HWDATA_M12  => (others => '0'),
                              HWDATA_M13  => (others => '0'),
                              HWDATA_M14  => (others => '0'),
                              HWDATA_M15  => (others => '0'),
                              HWDATA_M16  => (others => '0'),
                              HADDR       => HADDR,
                              HWDATA      => HWDATA,
                              HMASTER     => hmaster); 

  ahbmi1.hgrant <= hgrant;
  ahbmi2.hgrant <= hgrant;
  ahbmi3.hgrant <= hgrant;
  
  stimulus: process
  begin
  

    rst <= '1';
    wait for 100ns;
    rst <= '0';
    dmai1.start <= '1';
    dmai1.write <= '1';
    dmai1.address <= x"01010101";
    dmai1.wdata <= x"11111111";
    dmai1.size <= "010";
    ahbmi1.hready <= '1';
    dmai2.start <= '1';
    dmai2.write <= '0';
    dmai2.address <= x"02020202";
    ahbmi2.hrdata <= x"22222222";
    dmai2.size <= "010";
    ahbmi2.hready <= '1';
    dmai3.start <= '1';
    dmai3.write <= '1';
    dmai3.address <= x"03030303";
    dmai3.wdata <= x"33333333";
    dmai3.size <= "010";
    ahbmi3.hready <= '1';
    wait for 14ns;
    dmai1.start <= '0';
    wait for 15ns;
    dmai2.start <= '0';
    wait for 17ns;
    dmai3.start <= '0';
    wait for 20ns;
    dmai2.start <= '1';
    dmai2.write <= '1';
    dmai2.atomic <= '1';
    dmai2.address <= x"12345678";
    dmai2.wdata <= x"87654321";
    dmai2.size <= "010";
    ahbmi2.hready <= '1';
    wait for 10ns;
    dmai1.start <= '1';
    dmai3.start <= '1';
    wait for 20ns;
    dmai1.start <= '0';
    dmai3.start <= '0';
    wait for 10ns;
    dmai2.start <= '0';
    wait for 500ns;
    stop_the_clock <= true;         --Paramos el reloj y finalizamos la simulacion
    wait;
  end process;
  
    --Proceso de creacion de la señal de reloj
    clocking: process       
    begin
      while not stop_the_clock loop
        clk <= '0', '1' after clock_period / 2;
        wait for clock_period;
      end loop;
      wait;
    end process;
  
  end;
