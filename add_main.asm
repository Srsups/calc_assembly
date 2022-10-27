add_main proc
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
    and bh,0fh

    add bl,bh

    mov ah,02
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,10
    int 21h

    cmp bl,9
    jle imprime
    mov ah,09
    lea dx,msg8
    int 21h

    xor ax,ax
    mov al,bl
    mov bl,10
    div bl

    or al,30h
    or ah,30h
    mov bx,ax

    mov ah,02
    mov dl,bl
    int 21h

    mov ah,02
    mov dl,bh
    int 21h

    jmp fim
    
    add_main endp