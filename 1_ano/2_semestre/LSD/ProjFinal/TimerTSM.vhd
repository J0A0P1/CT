library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerTSM is
    
	 port (
        reset       : in  std_logic;                     
        clk      	  : in  std_logic;                    
        newTime  	  : in  std_logic;                     -- Sinal indicando um novo valor de tempo
		  time_enable : in  std_logic;
        timeVal  	  : in  std_logic_vector(7 downto 0);  -- Valor de tempo a ser carregado
        timeExp  	  : out std_logic                      -- Sinal que indica que o tempo expirou, chegou a 1.
    );
end TimerTSM;

architecture Behavioral of TimerTSM is
	
    signal s_counter : unsigned(7 downto 0) := (others => '1');  -- Contador de tempo inicializado com todos os bits em '0'
    signal s_cntOne  : std_logic := '0';                          -- Sinal que indica se o contador atingiu 1

begin
    process(clk)
    begin
        if (rising_edge(clk)) then
            if (reset = '1') then
                s_counter <= (others => '0');   -- Reinicia o contador com todos os bits em '0'
                s_cntOne <= '0';                -- Reseta o sinal de contador em 1
            elsif (newTime = '1') then
                s_counter <= unsigned(timeVal) - 1;  -- Carrega o contador com o valor do tempo menos 1
                s_cntOne <= '0';                     -- Reseta o sinal de contador em 1
            else
                if (s_counter = "00000001") then
                    s_cntOne <= '1';                -- Define o sinal de contador em 1 como '1' se o contador atingiu 1
                else
                    s_counter <= s_counter - 1;      -- Decrementa o contador em 1
                    s_cntOne <= '0';                 -- Reseta o sinal de contador em 1
                end if;
            end if;
        end if;
    end process;
    
    timeExp <= s_cntOne;  -- Atribui o valor do sinal de contador em 1 à saída timeExp

end Behavioral;
