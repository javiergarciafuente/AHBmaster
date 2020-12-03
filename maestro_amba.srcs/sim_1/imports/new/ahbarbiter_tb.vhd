library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
library grlib;
use grlib.amba.all;

entity ahbarbiter_tb is
end;

architecture bench of ahbarbiter_tb is

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
  signal ahbmi: ahb_mst_in_type := (x"0000", '0', (others => '0'),
   zahbdw, zxirq(NAHBIRQ-1 downto 0), '0', '0', '0', '0', ztestin);
  signal ahbmo: ahb_mst_out_type := ( '0', '0', "00", zx,
   '0', "000", "000", "0000", zahbdw, zxirq(NAHBIRQ-1 downto 0), (others => zx), 0);
  signal hmaster: std_logic_vector(3 downto 0);
  signal req1: std_logic := '0';
  signal HADDR: std_logic_vector(31 downto 0);
  signal HWDATA: std_logic_vector(31 downto 0);

  constant clock_period: time := 10 ns;     --frecuencia del reloj
  signal stop_the_clock: boolean;


begin

  uut: ahbarbiter port map ( clk            => clk,
                              rst           => rst,
                              hbusreqn(15)   => ahbmo.hbusreq,
                              hbusreqn(14)   => req1,
                              --hbusreqn(2)   => '1',        
                              hbusreqn(0 to NAHBMST-3)   =>  (others => '0'),                       
                              hlockn(15)     => ahbmo.hlock,      
                              hlockn(0 to NAHBMST-2)   =>  (others => '0'),
                              hgrantn       => ahbmi.hgrant,
                              hmaster       => HMASTER); 
                              
  uut1: mux port map ( clk            => clk,
                              rst       =>  rst,
                              HADDR_M1   => x"08080808",
                              HADDR_M2   => (others => '0'),
                              HADDR_M3   => (others => '0'),
                              HADDR_M4   => (others => '0'),
                              HADDR_M5   => (others => '0'),
                              HADDR_M6   => (others => '0'),
                              HADDR_M7   => (others => '0'),
                              HADDR_M8   => (others => '0'),
                              HADDR_M9   => (others => '0'),
                              HADDR_M10   => (others => '0'),
                              HADDR_M11   => (others => '0'),
                              HADDR_M12   => (others => '0'),
                              HADDR_M13   => (others => '0'),
                              HADDR_M14   => (others => '0'),
                              HADDR_M15   => x"07070707",
                              HADDR_M16   => x"06060606",
                              HWDATA_M1   => x"08080888",
                              HWDATA_M2   => (others => '0'),
                              HWDATA_M3   => (others => '0'),
                              HWDATA_M4   => (others => '0'),
                              HWDATA_M5   => (others => '0'),
                              HWDATA_M6   => (others => '0'),
                              HWDATA_M7   => (others => '0'),
                              HWDATA_M8   => (others => '0'),
                              HWDATA_M9   => (others => '0'),
                              HWDATA_M10   => (others => '0'),
                              HWDATA_M11   => (others => '0'),
                              HWDATA_M12   => (others => '0'),
                              HWDATA_M13   => (others => '0'),
                              HWDATA_M14   => (others => '0'),
                              HWDATA_M15   => x"07070707",
                              HWDATA_M16   => x"06060606",
                              HADDR        => HADDR,
                              HWDATA       => HWDATA,
                              HMASTER       => hmaster); 

  stimulus: process
  begin
  

    rst <= '1';
    wait for 20ns;
    rst <= '0';
    wait for 100ns;
    ahbmo.hbusreq <= '1';
    ahbmo.hlock <= '1';
    wait for 100ns;
    ahbmo.hbusreq <= '0';
    wait for 100ns;
    req1 <= '1';
    wait for 100ns;
    ahbmo.hlock <= '0';
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