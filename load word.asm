.data
	a: .word 0:100
.text
	la $t0,a
	lw $s1,8($t0)
	addi $s1,$0,-128
	sw $s1,8($t0)
	lw $s1,8($t0)
	li $v0,1
	move $a0,$s1
	syscall