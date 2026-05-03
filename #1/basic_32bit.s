#############################################################
# basic.s: sample program to mimic compilation of basic.c 	#
# and I am probably very wrong...			  				#
#############################################################

.section .data
output:
	.ascii "o/\n"
	.equ length, . - output

.section .text
.global _start
_start:
	mov $4, %eax
	mov $1, %ebx
	mov $output, %ecx
	mov $length, %edx
	int $0x80

	mov $1, %eax
	mov $0, %ebx
	int  $0x80
