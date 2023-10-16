 # Mapa de registos
# num: 		$t0
# i: 		$t1
# str: 		$t2
# str+i: 	$t3
# str[i]: 	$t4
 .data
 .eqv SIZE,20
 .eqv read_string,...
 .eqv print_int10,...
str: .space ... 
 
 .text
 .globl main
main: 	la $a0,... 		# $a0=&str[0] (endereço da posição
 				# 0 do array, i.e., endereço
 				# inicial do array)
 	li $a1,... 		# $a1=SIZE
 	li $v0,read_string
 	syscall 		# read_string(str,SIZE)
 	(...) 			# num=0; i=0;
while: 				# while(str[i] != '\0')
 	la $t2,str 		# $t2 = str ou &str[0]
 	addu $t3,... 		# $t3 = str+i ou &str[i]
 	lb $t4,0(...) 		# $t4 = str[i]
 	beq $t4,'\0',endw 	# {
if: 	bge $t4,'0',endif 	# if(str[i] >= '0' &&
 	ble $t4,'9',endif 	# str[i] <= '9');
 	addi $t0,$t0,1 		# num++;
endif:
 	addi $t1,$t1,1 		# i++;
	 j ... 			# }
endw: (...) 			# print_int10(num);
 	jr $ra 			# termina o programa