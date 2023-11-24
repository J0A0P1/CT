# Mapa de Registros:
# i    : $t0
# max1 : $t1
# max2 : $t2

	.data
array:   .word 4, 27, 3, 11, 56
	.eqv size, 5
	.text
	.globl main
main:
	sll $t1, $t1, 31 #max = 1 << 31;
	move $t2, $t1
	
	li $t0, 0         # i = 0;
	la $t3, array	  # $t3 = &array
for:	sll $t4, $t4, 2	  # $t4 = i*4 
	addu $t4, $t4, $t3 # $t4 = &val[i];
	lw $t4, 0($t4)    # $t4 = val[i];
if:	ble $t4, $t1, else
	move $t2, $t1
	sw $t1, 0($t4)
	j endif
else:
	ble $t4, $t2, endif
	bge $t4, $t1, endif
	sw $t2, 0($t4)
endif:
	addi $t0, $t0, 1	# i++;
	j for
endf: