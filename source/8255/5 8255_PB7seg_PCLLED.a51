;Program: Display hex value on seven segment and corresponding binary using LEDs connected at port B and C[3:0] of 8255
PORTA_8255 EQU 0001H
SEVSEG EQU 0002H			;PORTB_8255
LED EQU 0003H			;PORTC[3:0]_8255
CTRL_8255 EQU 0004H
ORG 00H
	MOV DPTR,#CTRL_8255
	MOV A,#80H	;port B=OUT, C=OUT
	MOVX @DPTR,A
	
AGAIN:	MOV DPTR,#SEVSEG
	MOV A,#0E7H			;DISPLAY 0
	MOVX @DPTR,A
	MOV DPTR,#LED
	MOV A,#11111111B
	MOVX @DPTR,A
	ACALL DELAY
	
	MOV DPTR,#SEVSEG
	MOV A,#21H			;DISPLAY 1
	MOVX @DPTR,A
	MOV DPTR,#LED
	MOV A,#11111110B
	MOVX @DPTR,A
	ACALL DELAY
	
	MOV DPTR,#SEVSEG
	MOV A,#0CBH			;DISPLAY 2
	MOVX @DPTR,A
	MOV DPTR,#LED
	MOV A,#11111101B
	MOVX @DPTR,A
	ACALL DELAY
	
	MOV DPTR,#SEVSEG
	MOV A,#0ABH			;DISPLAY 3
	MOVX @DPTR,A
	MOV DPTR,#LED
	MOV A,#11111100B
	MOVX @DPTR,A
	ACALL DELAY
	
	MOV DPTR,#SEVSEG
	MOV A,#2DH			;DISPLAY 4
	MOVX @DPTR,A
	MOV DPTR,#LED
	MOV A,#11111011B
	MOVX @DPTR,A
	ACALL DELAY
	
	MOV DPTR,#SEVSEG
	MOV A,#0AEH			;DISPLAY 5
	MOVX @DPTR,A
	MOV DPTR,#LED
	MOV A,#11111010B
	MOVX @DPTR,A
	ACALL DELAY
	
	MOV DPTR,#SEVSEG
	MOV A,#0EEH			;DISPLAY 6
	MOVX @DPTR,A
	MOV DPTR,#LED
	MOV A,#11111001B
	MOVX @DPTR,A
	ACALL DELAY
	
	MOV DPTR,#SEVSEG
	MOV A,#23H			;DISPLAY 7
	MOVX @DPTR,A
	MOV DPTR,#LED
	MOV A,#11111000B
	MOVX @DPTR,A
	ACALL DELAY
	
	MOV DPTR,#SEVSEG
	MOV A,#0EFH			;DISPLAY 8
	MOVX @DPTR,A
	MOV DPTR,#LED
	MOV A,#11110111B
	MOVX @DPTR,A
	ACALL DELAY
	
	MOV DPTR,#SEVSEG
	MOV A,#0AFH			;DISPLAY 9
	MOVX @DPTR,A
	MOV DPTR,#LED
	MOV A,#11110110B
	MOVX @DPTR,A
	ACALL DELAY
	
	MOV DPTR,#SEVSEG
	MOV A,#6FH			;DISPLAY A
	MOVX @DPTR,A
	MOV DPTR,#LED
	MOV A,#11110101B
	MOVX @DPTR,A
	ACALL DELAY
	
	MOV DPTR,#SEVSEG
	MOV A,#0ECH			;DISPLAY b
	MOVX @DPTR,A
	MOV DPTR,#LED
	MOV A,#11110100B
	MOVX @DPTR,A
	ACALL DELAY
	
	MOV DPTR,#SEVSEG
	MOV A,#0C6H			;DISPLAY C
	MOVX @DPTR,A
	MOV DPTR,#LED
	MOV A,#11110011B
	MOVX @DPTR,A
	ACALL DELAY
	
	MOV DPTR,#SEVSEG
	MOV A,#0E9H			;DISPLAY d
	MOVX @DPTR,A
	MOV DPTR,#LED
	MOV A,#11110010B
	MOVX @DPTR,A
	ACALL DELAY
	
	MOV DPTR,#SEVSEG
	MOV A,#0CEH			;DISPLAY E
	MOVX @DPTR,A
	MOV DPTR,#LED
	MOV A,#11110001B
	MOVX @DPTR,A
	ACALL DELAY
	
	MOV DPTR,#SEVSEG
	MOV A,#04EH			;DISPLAY F
	MOVX @DPTR,A
	MOV DPTR,#LED
	MOV A,#11110000B
	MOVX @DPTR,A
	ACALL DELAY
	AJMP AGAIN

DELAY:					;DELAY function
		MOV R5, #10
LOOP2:	MOV R6, #200
LOOP1:	MOV R7, #200
LOOP:	DJNZ R7, LOOP
		DJNZ R6, LOOP1
		DJNZ R5, LOOP2
RET
END