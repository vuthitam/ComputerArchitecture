.data
  str: .space 40
  strNhap: .asciiz "Nhap vao 1 chuoi: "
  strXuat: .asciiz "Chuoi da nhap: "
.text
main:
#in chuoi Nhap Chuoi:
  la $a0, strNhap
  addi $v0, $0, 4


  syscall
#Bat dau nhap:
  la $a0, str
  addi $a1, $0, 40
  addi $v0, $0, 8
  syscall
#Lay chuoi moi nhap tu $a0
  addi $s0, $a0, 0
#Xuat chuoi Da Nhap
  la $a0, strXuat
  addi $v0, $0, 4
  syscall
#in chuoi vua nhap:
  addi $a0, $s0, 0
  addi $v0, $0, 4
  syscall 