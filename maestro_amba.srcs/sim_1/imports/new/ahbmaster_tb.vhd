library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
library grlib;
use grlib.amba.all;
library xil_defaultlib;
use xil_defaultlib.InterfazRV32AHB.all;

entity ahbmaster_tb is
end;

architecture bench of ahbmaster_tb is

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

  signal clk: std_logic;
  signal rst: std_logic;
  signal ahbmi: ahb_mst_in_type := (x"0000", '0', (others => '0'),
   zahbdw, zxirq(NAHBIRQ-1 downto 0), '0', '0', '0', '0', ztestin);
  signal ahbmo: ahb_mst_out_type;-- := ( '0', '0', "00", zx,
   --'0', "000", "000", "0000", zahbdw, zxirq(NAHBIRQ-1 downto 0), (others => zx), 0);
  signal dmai: RV32_to_AHB := ('0',(others => '0'), '0', (others => '0'),(others => '0'),'0','0');
  signal dmao: AHB_to_RV32 := ((others => '0'),'0');

  constant clock_period: time := 10 ns;     --frecuencia del reloj
  signal stop_the_clock: boolean;

begin

  uut: ahbmaster port map (   clk       => clk,
                              rst       => rst,
                              ahbmi     => ahbmi,
                              ahbmo     => ahbmo,    
                              dmai      =>  dmai,                       
                              dmao      => dmao);
  stimulus: process
  begin
  

    rst <= '1';
    wait for 20ns;
    rst <= '0';
    dmai.start <= '1';
    dmai.write <= '1';
    dmai.address <= x"08080808";
    dmai.wdata <= x"11111111";
    dmai.size <= "010";
    ahbmi.hready <= '1';
    wait for 50ns;
    ahbmi.hgrant(0) <= '1';
    wait for 100ns;
   
    
    wait for 100ns;
    
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