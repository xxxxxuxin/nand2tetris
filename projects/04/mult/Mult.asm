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

    
    @i 
    M=0     //i=0
    @2
    M=0     //RAM[2]=0

    @0
    D=M
    @ZERO
    D;JEQ

    @1
    D=M
    @ZERO
    D;JEQ

(LOOP)
    @1
    D=M  
    @i
    D=M-D
    @END
    D;JEQ  

    @0
    D=M     //D=RAM[0]
    @2
    M=M+D   //RAM[2]=RAM[2]+RAM[0]
    @i
    M=M+1   //i=i+1

 
    @LOOP
    0;JMP

(ZERO)
    @2
    M=0
    @END
    0;JMP

(END)
    @END
    0;JMP