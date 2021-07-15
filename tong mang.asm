.data 
	a: .word 2,3,4,5,6,7
	len: .word 6
	str1: .asciiz "Tong cac ptu:"
.text
	la $t1,len
	lw $t1,($t1)
	#sum=0
	add $t0,$0,0
	la  $t2,a
	#i=0, 
	add $t3,$t3,0
	
loop:   
	lw $s1, ($t2)
	add $t0,$t0,$s1
	add $t2,$t2,4
	add $t3,$t3,1
	beq $t3,$t1,done
	j loop
done:	
	li $v0,4
	la $a0,str1
	syscall
	li $v0,1
	move $a0,$t0
	syscall