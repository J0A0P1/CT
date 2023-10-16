# $t0 = bin
# $t1 = gray
# %t2 = num

	.data
	.text
	.globl main
main:	li $t1, 0x12345678

	li $t2, $t1	        # num = gray
	
	srl $t1, $t0, 4		# num = num >> 4
	xor $t2, $t2, $t2	# nun = num ^ (num >> 4)
	srl $t1, $t0, 2		# num = num >> 2
	xor $t2, $t2, $t2	# nun = num ^ (num >> 2)
	srl $t1, $t0, 1		# num = num >> 1
	xor $t2, $t2, $t2	# nun = num ^ (num >> 1)
	
	jr $ra
 	
 	