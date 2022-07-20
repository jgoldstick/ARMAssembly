// Assembler program to print "Hello World!" in 
// ARM assembly language using linux system call

// x0-x2 - parameters for Linux function services
// x8 - Linux function number

.global _start

_start:
	mov	x0, #1			// 1 is stdout
	ldr	x1, =helloworld		// see below
	mov	x2, #13			// length of string
	mov	x8, #64			// linux write system call
	svc	0			// call it

// set up to exit program properly
	mov	x0, #0			// return code
	mov	x8, #93			// 93 terminates
	svc	0

.data
helloworld:	.ascii	"Hello World!\n"

	
