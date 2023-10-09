#Aula2_1.asm

# $t0 - valor de entrada 1
# $t1 - valor de entrada 2
# $t2 - and bit a bit de t1 e t0
# $t3 - or  bit a bit de t1 e t0
# $t4 - nor bit a bit de t1 e t0
# $t5 - xor bit a bit de t1 e t0

  	.data
 	.text
 	.globl main
main: 	ori $t0,$0,0x1234 	# substituir val_1 e val_2 pelos
 	ori $t1,$0,0x000F 	# valores de entrada desejados
 	and $t2,$t0,$t1 	# $t2 = $t0 & $t1 (and bit a bit)
 	or  $t3,$t0,$t1		# $t3 = $t0 | $t1 (or bit a bit)
 	nor $t4,$t0,$t1		# $t4 = !($t0 | $t1) (or bit a bit)
 	xor $t5,$t0,$t1		# $t5 = $t0 xor $t1 (or bit a bit)
 	
 	
 	jr $ra 		# fim do programa