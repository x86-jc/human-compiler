 #########################################################
# basic.s: sample program to mimic compilation of basic.c #
# and I am probably very wrong...			  #
 #########################################################

.section .data
output:
	.ascii "o/\n\n"
	.equ length, . - output

.section .text
.global _start
_start:
	mov $4, %rax
	mov $1, %rbx
	mov $output, %rcx
	mov $length, %rdx
	int $0x80

	mov $1, %rax
	mov $0, %rbx
	int  $0x80
