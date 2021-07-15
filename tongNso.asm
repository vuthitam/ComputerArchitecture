.data
	str1: .asciiz "Nhap n="
	str2: .asciiz "Tong n so dau tien la:"
.text
	li $v0, 4
	la $a0, str1
	syscall
	# init
	li $v0, 5
	syscall
	# n =
	move $s0, $v0
	# sum = 0
	addi $s1, $0, 0
	# i = 1
	addi $s2, $0, 0
	
for: 	bgt $s2, $s0, done
	add $s1, $s1, $s2
	addi $s2, $s2, 1
	j for
done:.. 
	li $v0, 4
	la $a0, str2
	syscall
	li $v0, 1
	move $a0, $s1
	syscall
