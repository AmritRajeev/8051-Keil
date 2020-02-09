ORG 0000                                        
      MOV R1,#04  
      MOV R2,#03      
      LCALL FACT       
      MOV R1,A   
ORG 300h	  
FACT: MOV A,R1     
      CJNE R2,#00,UP
	  JMP FIN
UP:   MOV B,R2      
      MUL AB         
      DJNZ R2,UP      
FIN:  RET
	  END	