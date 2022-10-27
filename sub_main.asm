sub_main proc
    
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

    sub bl,bh

    mov ah,02
    mov dl,10
    int 21h
    
    mov ah,02
    mov dl,10
    int 21h

    cmp bl,0
    jge imprime_short
    mov ah,09
    lea dx,msg8
    int 21h

    neg bl

    xor ax,ax
    mov al,bl

    or al,30h
    or ah,30h

    mov bx,ax

    mov ah,02
    mov dl,2dh
    int 21h

    mov ah,02
    mov dl,bl
    int 21h
imprime_short:
jmp imprime

    jmp fim
    
    sub_main endp