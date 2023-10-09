#Aula2_1c
		
	.data
	.text
	.globl main

main:
    # Carregue o valor de entrada $t0 com 0x0001
    ori $t0, $0, 0x00000001

    # Inverta todos os bits de $t0 e coloque o resultado em $t1
    li $t2, 0xFFFFFFFF  # Crie uma máscara com todos os bits definidos como 1
    xor $t1, $t0, $t2  # Use XOR para inverter os bits de $t0 e armazenar em $t1

    # Saída do programa
    li $v0, 10    # Código da syscall para sair do programa
    syscall
