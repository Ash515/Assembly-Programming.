CODE SEGMENT
ASSUME CS:CODE,DS:CODE 
ORG 1000H
MOV AL,68H 
MOV CL,04H 
ROR AL,CL 
MOV SI,2000H 
MOV [SI],AL 
MOV AH,4CH 
INT 21H
CODE ENDS 
END