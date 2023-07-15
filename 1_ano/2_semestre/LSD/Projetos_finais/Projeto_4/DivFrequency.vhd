library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Frequency_Divider is
  port (
    clk         : in  std_logic;
    reset       : in  std_logic;
    acceleration: in  std_logic_vector(1 downto 0); -- Comutadores para configuração de aceleração
    output0     : out std_logic;
    output1     : out std_logic;
    output2     : out std_logic;
    output3     : out std_logic
  );
end entity Frequency_Divider;

architecture Behavioral of Frequency_Divider is
  constant NORMAL_FREQUENCY : integer := 1;     -- Frequência normal (1 Hz)
  constant FREQ_1_HZ        : integer := 1;     -- Frequência de 1 Hz
  constant FREQ_10_HZ       : integer := 10;    -- Frequência de 10 Hz
  constant FREQ_60_HZ       : integer := 60;    -- Frequência de 60 Hz

