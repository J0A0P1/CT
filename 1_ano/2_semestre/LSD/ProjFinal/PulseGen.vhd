--Gerador de pulso

library IEEE;
use ieee.std_logic_1164.all;

entity PulseGen is
    port (
        clk : in std_logic;
        pulse_out : out std_logic
    );
end PulseGen;

architecture Behavioral of PulseGen is
    constant CLOCK_FREQ : integer := 50000000; -- Freq. de clock de 50 MHz
    constant PULSE_FREQ : integer := 1;        -- Freq. do pulso de 1 Hz (um pulso por segundo)
    constant COUNT_MAX  : integer := CLOCK_FREQ / PULSE_FREQ;
    
    signal count : integer range 0 to COUNT_MAX - 1 := 0;
	 
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if count = COUNT_MAX - 1 then
                pulse_out <= '1';
                count <= 0;
            else
                pulse_out <= '0';
                count <= count + 1;
            end if;
        end if;
    end process;
end Behavioral;