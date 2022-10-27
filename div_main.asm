div_main proc

    mov bl,4
    mov bh,2

    add bl,30h

    mov ah,02h
    mov dl,bl
    int 21h

    mov ah,4ch
    int 21h

    div_main endp