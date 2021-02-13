// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

// use R2 as accumulator
// add R0 to accumulator for R1 times

// i to indicate number of time run during loop

@i
M=1   // i = 1
@R2
M=0     // R2 = 0

(LOOP)
@i
D=M     // D = i
@R1
D=D-M
@END
D,JGT  // if i - R1 > 0, jump
@R0
D=M
@R2
M=D+M   // add r0 to accumulator r2
@i
M=M+1
@LOOP
0;JMP

(END)
@END
0;JMP

