.model small

.data

.code

main proc
        MOV AX,1000H
        MOV DS,AX
        MOV AX,0050H
        MOV DI,AX
        MOV AX,0000H
	
	MOV	[0050H],04H	
	MOV	[0051H],00H	
	MOV	[0052H],0FCH
	MOV	[0053H],00H	
	MOV	[0054H],05H
	MOV	[0150H],00H	
	MOV	[0151H],02H	
        MOV	[0152H],04H
        MOV	[0153H],06H
        MOV	[0154H],08H
        

	MOV	DX,[0050H]	 
	MOV	CX,[0052H]	
	ADD DX,CX
	MOV BX,DX
	MOV AL,00
			    
ADD_LP:	ADD	AL,[BX+DI]
		INC	BX	        
		INC	CL	        
		JNZ	ADD_LP	    
        
endp
end main
