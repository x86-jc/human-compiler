#################################################################
# basic_64bit.s: sample program to mimic compilation of basic.c #
# and I am probably very wrong...			                    #
#################################################################

.section .data
output:
	.ascii "o/\n"
output_length = . - output

.section .bss

.section .text
.global _start
_start:
	movq $1, %rax			              # write(fd, addr, length)
	movq $1, %rdi		
	movq $output, %rsi	
  	movq $output_length, %rdx	
	syscall

	movq $60, %rax			            # exit(0)
	xorq %rdi, %rdi			
	syscall
