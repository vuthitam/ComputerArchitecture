.data
	str1: .asciiz "Nhap n="
	str2: .asciiz "Tong n so le dau tien la:"
.text
	li $v0, 4
	la $a0, str1
	syscall
	li $v0, 5
	syscall
	move $s0, $v0
	# n = n + 1
	addi $s0, $s0, 1
	# i = 1
	addi $s1, $0, 0
	# sum = 0
	addi $s2, $0, 0
repeat: 
	beq $s1, $s0, done
	mul $t0, $s1, 2
	addi $t0, $t0, 1
	add $s2, $s2, $t0
	addi $s1, $s1, 1
	j repeat
done:..
	li $v0, 4
	la $a0, str2
	syscall
	li $v0, 1
	move $a0, $s2
	syscall
