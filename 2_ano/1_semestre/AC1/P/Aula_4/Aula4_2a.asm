# Mapa de registros
# num : $t0
# p  : $t1			# ponteiro
# *p   : $t2			# conteudo 

	.data
	.eqv size, 20
	.eqv read_string, 8
	.eqv print_int10, 1
str:	.space size
	.text
	.globl main
main:	
	la $a0, str
	li $t0, 0		# num = 0;
	li $a1, size
	li $v0, read_string
	syscall			#read_string(str, size);
	la $t1, str		# p = str;	Inicializa o ponteiro com o endereço inicial da string
while: 	
	lb $t2, 0($t1)
	beq $t2, '\0', endw
       	blt $t2, '0', endif
       	bgt $t2, '9', endif
       	addi $t0, $t0, 1	# num++
endif: 
	addiu $t1, $t1, 1 	# p++
       	j while
endw:
	move $a0, $t0
	li $v0, print_int10
	syscall			#print_int10(num);
		