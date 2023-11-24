# Mapa de Registros :
# i : $t0
# lista : $t1
# lista + i: $t2

	.data
	.eqv size, 5
lista:  .space	20
str:	.asciiz "\nIntroduza um numero: "
	.align 2
	.eqv read_int, 4
	.eqv print_string, 5
	.text
	.globl main 
main:	li $t0, 0		# i = 0;

for:	bge $t0, size, endf
	la $a0, str
	li $v0, print_string
	syscall			# print_string(str);
	
	li $v0, read_int
	syscall
	
	la $t1, lista
	sll $t2, $t0, 2		
	addu $t2, $t1, $t0	# $t2 = lista + i
	sw $v0, 0($t2)
	addi $t0, $t0, 1	# i++;
	j for
endf:	jr $ra