--Deve selecionar o programa que pretende executar. Por uma questão de 
--simplicidade a máquina pode executar até 2 programas: pão caseiro (C) / rústico (R): 
--amassar, levedar, cozer pão caseiro é 10s, 4s, 10s, respetivamente; amassar, levedar, cozer pão rústico é 15s, 8s, 10s, respetivamente.

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Registro is

    port (
        clk 				  : in std_logic;
        reset 				  : in std_logic;
        start_stop 		  : in std_logic;
        SW					  : in std_logic_vector(3 downto 0);
        
		  time_cozer        : out std_logic_vector(7 downto 0);
        time_levedar 	  : out std_logic_vector(7 downto 0);
        time_amassar 	  : out std_logic_vector(7 downto 0);
        start_stop_out 	  : out std_logic
		 );
end Registro;

architecture Behavioral of Registro is
    signal time_cozer_reg   : std_logic_vector(7 downto 0);
    signal time_levedar_reg : std_logic_vector(7 downto 0);
    signal time_amassar_reg : std_logic_vector(7 downto 0);
    signal start_stop_reg   : std_logic;
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                -- Inicialização dos registros quando o sinal de reset é ativado
                time_cozer_reg   <= (others => '0');
                time_levedar_reg <= (others => '0');
                time_amassar_reg <= (others => '0');
                start_stop_reg   <= '0';
            else
                -- Atualização dos registros com base nos sinais de entrada
                time_cozer_reg   <= time_cozer_reg;
                time_levedar_reg <= time_levedar_reg;
                time_amassar_reg <= time_amassar_reg;
                start_stop_reg   <= start_stop;
                
                -- Define o tempo de cada processo com base no tipo de pão escolhido
                
					 if    SW(0) = '1' and SW(1) = '0' then	 	-- Pão caseiro
                    time_cozer_reg   <= "00001010";  -- 10s de cozedura para o pão caseiro
                    time_levedar_reg <= "00000100";  -- 4s de levedar para o pão caseiro
                    time_amassar_reg <= "00001010";  -- 10s de amassar para o pão caseiro
                
					 elsif SW(0) = '1' and SW(1) = '1' then 		-- Pão rustico
                    time_cozer_reg   <= "00001010";  -- 10s de cozedura para o pão rústico
                    time_levedar_reg <= "00001000";  -- 8s de levedar para o pão rústico
                    time_amassar_reg <= "00001111";  -- 15s de amassar para o pão rústico
                end if;
            end if;
        end if;
    end process;

    -- Saídas do registro
    time_cozer <= time_cozer_reg;
    time_levedar <= time_levedar_reg;
    time_amassar <= time_amassar_reg;
    start_stop_out <= start_stop_reg;
end Behavioral;

