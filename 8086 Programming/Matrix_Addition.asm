CODE SEGMENT
ASSUME CS:CODE,DS:CODE 
ORG 1000H
MOV SI,1500H 
MOV BX,0050H 
MOV DI,1600H 
MOV CL,04H 
L2:MOV CH,00H
MOV AX,[SI+BX] 
ADD AX,[SI]
JNC L1 
INC CH
L1:MOV [DI],AX 
ADD DI,02H 
MOV [DI],CH 
INC DI
ADD SI,02H 
DEC CL 
JNZ L2 
MOV AH,4CH 
INT 21H
CODE ENDS 
END
