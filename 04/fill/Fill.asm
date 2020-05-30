// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

@SCREEN
D=A

// TODO: Can I fill an entire row or column quickly?

(COLOUR)
	A=D
	M=1
	D=D+1
	@COLOUR
	0;JMP

(END)
	@END
	0;JMP
