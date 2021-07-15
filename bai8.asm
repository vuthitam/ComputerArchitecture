#Ch??ng trình cho phép nh?p tên và tu?i và sau ?ó in ra màn hình
.data
	chuoi1: .asciiz "Nhap Ten: "
	chuoi2: .asciiz "Nhap Tuoi: "
	ten: .asciiz 
.text
	li $v0, 4
	la $a0, chuoi1
	syscall
	#nh?p tên:
	li $v0, 8
	la $a0, ten
	li $a1, 50
	syscall
	move $t1, $a0
	
	#Nh?p tu?i
	li $v0, 4
	la $a0, chuoi2
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	#in tên
	li $v0, 4
	move $a0, $t1
	syscall
	#in tu?i
	li $v0, 1
	move $a0, $t2
	syscall
 
