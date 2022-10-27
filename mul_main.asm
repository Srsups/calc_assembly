mul_main proc
    mov ah,09
    lea dx,msg6
    int 21h

    mov ah,01
    int 21h

    mov bl,al
    and bl,0fh

    mov ah,02
    mov dl,10
    int 21h

    mov ah,09
    lea dx,msg7
    int 21h

    mov ah,01
    int 21h

    mov bh,al
    
    call multiplica
    call imprime_m
    
    jmp fim

    multiplica proc
    push ax
    push bx
    and dx,0

TOPO:   
    TEST BX,1
    JZ PT1
    add dx,ax

PT1:
    SHL AX,1        
    SHR BX,1
    jnz TOPO
    pop bx
    pop ax
    ret
    multiplica endp
IMPRIME_m PROC

    PUSH AX
    PUSH DX
    mov bl,dl

    mov ah,02
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,10
    int 21h
    
    mov ah,09
    lea dx,msg8
    int 21h
    
    MOV AH,02H
    mov dl,bl
    INT 21h 
    POP DX  
    POP AX
    RET
IMPRIME_m ENDP
    
    mul_main endp