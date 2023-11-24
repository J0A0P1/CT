# Mapa de registros :
# $t0 : value
# $t1 : bit
# $t2 : i
# $t3 : rem (i%4)
	.data
str1:	.asciiz "Introduza um numero: "
str2:	.asciiz "\nO valor em binário é: "
char1:	.asciiz "1"
char2:	.asciiz "0"
	.eqv print_str, 4
	.eqv read_int, 5
	.eqv print_char, 11
	.text
	.globl main

main:	
	la $a0, str1		# Load á string 1 (str1)
	ori $v0, $0, print_str
	syscall			# print_string(str1);
	ori $v0, $0, read_int 
	syscall
	move $t0, $v0		# value = read_int();  // Nota: move trata-se de uma instrução virtual 	
	la $a0, str2		# Load á string 2 (str2)
	ori $v0, $0, print_str
	syscall			#print_string(str2)
	
	li $t2, 0		# i = 0;
for:    bge $t2, 32, endfor   # Se i >= 32, salta para o fim do for
    	rem $t3, $t2, 4 
    	bne $t3, 0, endif     # if((i%4) == 0)
	li $v0, print_char
	li $a0, 32		# 32 é o codigo ASCII para ' '
	syscall			#print(' ')    	
endif: 	li $t3, 0x80000000
    	and $t1, $t0, $t3     # bit = value & 0x80000000; // isola bit 31
    	beq $t1, $0, else2     # if(bit == 0)
    	li $v0, print_char         # $v0 agora deve ser 11 (print_char)
    	li $a0, 49          # 49 é o código ASCII para '1'
    	syscall            # Imprime '1'
    	j endif2
else2:
    	li $v0, print_char         # $v0 agora deve ser 11 (print_char)
    	li $a0, 48          # 48 é o código ASCII para '0'
    	syscall            # Imprime '0'
endif2:
    	sll $t0, $t0, 1     # shift left de 1 bit
    	addi $t2, $t2, 1    # i++
    	j for              # salto incondicional para o for
endfor:

	jr $ra