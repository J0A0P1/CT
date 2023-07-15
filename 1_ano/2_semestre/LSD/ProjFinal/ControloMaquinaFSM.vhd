--Controlo da máquina. FSM

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.ALL;

entity ControloMaquinaFSM is
    port (
        -- entradas do controlador
        reset, clk, start_stop, timer_exp: in std_logic;
        time_cozer, time_levedar, time_amassar, time_repouso: in std_logic_vector(7 downto 0);
        -- saídas do controlador
        new_time: out std_logic;
		  time_enable: out std_logic;
        time_value: out std_logic_vector(7 downto 0);
		  display_selec: out std_logic_vector(6 downto 0);
        LEDR : out std_logic_vector(0 downto 0)
    );
end ControloMaquinaFSM;

architecture Behavioral of ControloMaquinaFSM is
    
	 type estado is (inicio, amassar, levedar, cozer, repouso, stop);
    signal estado_atual, proximo_estado: estado;
    signal total_time, display_time : std_logic_vector(7 downto 0);
    signal counter, extra_time : std_logic_vector(7 downto 0) := (others => '0'); -- inicia tudo a zero

begin
    process(clk, reset)
    begin
        if(reset = '1') then
            estado_atual <= inicio;
        elsif(rising_edge(clk)) then
            estado_atual <= proximo_estado;
        end if;
    end process;

    process(estado_atual, time_cozer, time_levedar, time_amassar, start_stop, timer_exp)
    begin
        proximo_estado <= estado_atual; -- evita redundância

        case estado_atual is
            when inicio =>
                total_time <= std_logic_vector(unsigned(time_amassar) + unsigned(time_levedar) + unsigned(time_cozer));
                display_time <= total_time;
                if start_stop = '1' then
                    proximo_estado <= amassar;
                end if;
					 
            when amassar =>
                counter <= time_amassar;
                display_time <= counter;
                if timer_exp = '1' then
                    proximo_estado <= levedar;
                elsif start_stop = '1' then
                    proximo_estado <= stop;
                end if;

            when levedar =>
                counter <= time_levedar;
                display_time <= counter;
                if timer_exp = '1' then
                    proximo_estado <= cozer;
                elsif start_stop = '1' then
                    proximo_estado <= stop;
                end if;

            when cozer =>
                counter <= time_cozer;
                display_time <= counter;
                if timer_exp = '1' then
                    proximo_estado <= repouso;
                elsif start_stop = '1' then
                    proximo_estado <= stop;
                end if;

            when repouso =>
                counter <= time_repouso;
                display_time <= counter;
                if timer_exp = '1' then
                    proximo_estado <= inicio;
                elsif start_stop = '1' then
                    proximo_estado <= stop;
                end if;

            when stop =>
                counter <= (others => '0');
                display_time <= counter;
                if start_stop = '0' then
                    proximo_estado <= estado_atual;
                end if;

        end case;
    end process;
end Behavioral;
