;Program: Traffic light controller
LED_R EQU P2.0
LED_Y EQU P2.1
LED_G EQU P2.2
ORG 00H
BLINK:
	CLR LED_R	;Red LED ON
	SETB LED_Y	;with large delay
	SETB LED_G
	ACALL DELAY
	ACALL DELAY
	ACALL DELAY
	ACALL DELAY
	SETB LED_R
	CLR LED_Y	;Yellow LED ON
	SETB LED_G	;with small delay
	ACALL DELAY
	SETB LED_R
	SETB LED_Y
	CLR LED_G	;Green LED ON
	ACALL DELAY	;with large delay
	ACALL DELAY
	ACALL DELAY
	AJMP BLINK
	
DELAY:	;Function for delay
		MOV R0, #10
LOOP2:	MOV R1, #200
LOOP1:	MOV R2, #200
LOOP:	DJNZ R2, LOOP
		DJNZ R1, LOOP1
		DJNZ R0, LOOP2
RET
END