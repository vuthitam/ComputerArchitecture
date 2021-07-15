.data
.text 
	li $v0, 5
	syscall
	move $s0, $v0 #n = input
	addi $s0, $s0, 1 #n = n+1
	addi $s1, $0, 0
	addi $s2, $0, 1
	addi $s3, $0, 1
for: 	beq $s2, $s0, done #i = n
	mul $s3, $s3, $s2 	
	add $s1, $s1, $s3
	addi $s2, $s2, 1
	j for
done:..
	li $v0, 1
	move $a0, $s1
	syscall


#N = 3
#S0 = 1
#S1 =0
#S2,s3 =1
#Loop1: 1 != 4
#S3 =1*1
#1 = 0+1*1
#S2 = 1+1=2
#Loop2: 2 != 4
#S3 =1*2=2
#S1 = 0 +1*1 + 1*2
#2 = 2+1=3
#oop3: 3!=4
#S3 = 2*3
#S1 = 0 +1*1 + 1*2 + 2*3
#S2 = 3+1=4
#Loop4: 4=4 => done end

