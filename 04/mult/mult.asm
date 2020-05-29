// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// initilize variables for loop
	@i
	M=0
	@R2		// product
	M=0

(LOOP)
	// check loop condition
	@i
	D=M	
	@R1	
	D=D-M	// this line matters
	@END
	D;JEQ	// If (i-multiplier)>0 goto END
	
	// if loop condition holds, we add the multiplicand to the product once
	@R0
	D=M			
	@R2
	M=M+D	//does this compile?
	
	//increment i and jump to beginning of LOOP
	@i
	M=M+1
	@LOOP
	0;JMP

(END)
	@END
	0;JMP	// Infinite loop, how we terminate HACK ASM programs

	// TODO: 1 * 0 and 0 * 1, 1 * 1