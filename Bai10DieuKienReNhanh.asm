.data
	chuoi1: .asciiz "bang nhau"
	chuoi2: .asciiz "khong bang nhau"
.text
	li $t1, 10
	li $t2, 10
	
	#r? nh�nh c� ?i?u ki?n 
	beq $t1, $t2, in_chuoi_1
	#in chu?i 2
	li $v0, 4
	la $a0, chuoi2
	syscall
	#k?t th�c ch??ng tr�nh
	li $v0, 10
	syscall
	in_chuoi_1:
		li $v0, 4
		la $a0, chuoi1
		syscall	
	
