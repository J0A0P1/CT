# $t0 = a
# $t1 = b
# $t2 = a + b
	

	.data
str1:   .asciiz "Introduza 2 numeros "
str2:   .asciiz "A soma dos dois numeros é: "
	.eqv print_string, 4
	.eqv read_int, 5
	.eqv print_int10, 1
	.text
	.globl main

main:	la $a0, str1
	ori $v0, $0, print_string
	syscall				# print_string(str1)
	
	ori $v0, $0, read_int
	syscall				# read_int do valor a
	or $t0, $v0, $0 		# $t0 = a
	
	ori $v0, $0, read_int
	syscall				# read_int do valor b
	or $t1, $v0, $0			# $t1 = b
	
	la $a0, str2
	ori $v0, $0, print_string
	syscall				#print_string(str2)
	
	add $a0, $t0, $t1		# $a0 = a + b	
	ori $v0, $0, print_int10	#print a + b em decimal
	syscall
	
	jr $ra
	
	