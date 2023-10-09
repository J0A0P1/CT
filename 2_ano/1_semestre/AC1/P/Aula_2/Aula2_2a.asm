#Aula2_2a

# $t0 - valor de entrada 1
# $t2 - Shift left logical 
# $t3 - Shift right logical
# $t4 - Shift right arithmetic

		.data
		.text
		.globl main 
main: 		
		li  $t0,0x12345678
		sll $t2, $t0, 1
		srl $t3, $t0, 1
		sra $t4, $t0, 1
	
		jr $ra