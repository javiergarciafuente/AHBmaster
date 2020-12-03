----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2020 15:46:38
-- Design Name: 
-- Module Name: InterfazRV32AHB - Behavioral
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


package InterfazRV32AHB is

type RV32_to_AHB is record
  start        : std_logic; 
  size         : std_logic_vector(2 downto 0);
  write        : std_logic;
  wdata        : std_logic_vector(31 downto 0);
  address      : std_logic_vector(31 downto 0);
  burst        : std_logic;
  atomic       : std_logic;
end record;

type AHB_to_RV32 is record
  rdata   : std_logic_vector(31 downto 0);
  finish  : std_logic;   
end record;


end;