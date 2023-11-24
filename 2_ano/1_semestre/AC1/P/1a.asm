# Mapa de Registros
# num  : $t0
# i    : $t1
# order: $t2

	.data
str1:	.asciiz "Enter a number: "
str2:	.asciiz "No set bits\n"
	.eqv	print_string, 4
	.eqv	read_int, 5
	.eqv	print_int10, 1
	.text
	.globl main
main:	li $t2, -1	# order = -1;
	la $a0, str1
	li $v0, print_string
	syscall
	li $v0, read_int
	syscall
	or $t0, $t0, $v0	# num = read_int;
	li $t1, 0
do:	
	andi $t3, $t0, 1	# $t3 = num & 1
	bne  $t3, 1, endif1	# if ((num & 1) != 1) go to endif
	or   $t2, $0, $t1	# order = i;
endif1:	sra  $t0, $t0, 1	# num = num >> 1;
	addi $t1, $t1, 1	# i++;
	blt $t1, 32, do

	beq $t2, -1, else
	li $v0, print_int10
	or $a0, $0, $t2
	syscall
	j endif2
else:
	la $a0, str2
	li $v0, print_string
	syscall
endif2: 
	jr $ra



