      .model small
      .stack 100h
      .data
      
      .code
      main proc
       ;DX = AX + BH - CL + DX
       ;Initialize the AX, BX, CX, and DX with 0100h, 55ABh, 0A11h and 0001h
       
       mov ax, 0100h
       mov bx, 55abh
       mov cx, 0a11h
       mov dx, 0001h
       
       add dx, ax
        
       mov al, bh
       mov ah, 0
       add dx, ax
       
       mov al, cl
       mov ah, 0
       sub dx, ax
       
       ;dx = 0145h
       main endp 
      .exit