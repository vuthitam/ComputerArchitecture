.data 
	chuoi: .ascii "Xin chao \n"
.text 
	li $t1 , 1 #bi?n ?i?u ki?n l?p 
	loop: 
		bgt $t1, 5, done #?k k?t th�c l?p, n?u $t1 > 5 ?�ng th� -> tho�t l?p
		#trong v�ng for
		li $v0, 4
		la $a0, chuoi
		syscall
		add $t1, $t1, 1
		j loop
	done: 
	