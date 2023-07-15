library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BinTo7Seg is
    port (
        binary : in  std_logic_vector(3 downto 0);  -- Entrada binária de 4 bits
        seg    : out std_logic_vector(6 downto 0)   -- Saída para o display de 7 segmentos
    );
end entity BinTo7Seg;

architecture Behavioral of BinTo7Seg is
begin
    process (binary)
    begin
        case binary is
            when "0000" =>
                seg <= "1000000";  -- 0
            when "0001" =>
                seg <= "1111001";  -- 1
            when "0010" =>
                seg <= "0100100";  -- 2
            when "0011" =>
                seg <= "0110000";  -- 3
            when "0100" =>
                seg <= "0011001";  -- 4
            when "0101" =>
                seg <= "0010010";  -- 5
            when "0110" =>
                seg <= "0000010";  -- 6
            when "0111" =>
                seg <= "1111000";  -- 7
            when "1000" =>
                seg <= "0000000";  -- 8
            when "1001" =>
                seg <= "0010000";  -- 9
            when others =>
                seg <= "-------";  -- Número inválido
        end case;
    end process;
end architecture Behavioral;
