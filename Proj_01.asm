TITLE Lucas Bertola da Silva RA:22005810, Joao Vitor Roventini RA:
.model small
.stack 100h
.data
    msg db 'Qual sera a operacao?',10,'$'
    msg2 db 'Adicao [1]',10,'$'
    msg3 db 'Subtracao [2]',10,'$'
    msg4 db 'Multiplicacao [3]',10,'$'
    msg5 db 'Divisao [4]',10,'$'
    msg13 db 'Sua escolha: ','$'
    msg6 db 'Digite o primeiro numero (de 0 a 9): ','$'
    msg7 db 'Digite outro numero (de 0 a 9): ','$'
    msg8 db 'O resultado da operacao e: ','$'
    msg9 db 'Escolha uma opcao valida!','$'
    msg10 db 'Deseja continuar?','$'
    msg11 db 'Gostaria de utilizar o mesmo resultado?','$'
    msg12 db 10,'Obrigado por utilizar a nossa versao de calculadora!','$'
    msg14 db 'O resultado da operacao e: 0','$'
.code

main proc
    mov ax,@data
    mov ds,ax

start:
    mov ah,09
    lea dx,msg
    int 21h

    mov ah,09
    lea dx,msg2
    int 21h

    mov ah,09
    lea dx,msg3
    int 21h

    mov ah,09
    lea dx,msg4
    int 21h

    mov ah,09
    lea dx,msg5
    int 21h

    mov ah,02
    mov dl,10
    int 21h

    mov ah,09
    lea dx,msg13
    int 21h

    mov ah,01
    int 21h

    mov bl,al

    mov ah,02
    mov dl,10
    int 21h

    mov ah,02
    mov dl,10
    int 21h

    cmp bl,31h
    je adicao

    cmp bl,32h
    je subtracao

    cmp bl,33h
    je multiplicacao

    cmp bl,34h
    je divisao
    mov ah,09
    lea dx,msg9
    int 21h

    jmp fim

adicao:

   call add_main

subtracao:

    call sub_main

multiplicacao:
   
    call mul_main

divisao:

    call div_main    

imprime:

    add bl,30h

    mov ah,02
    mov dl,10
    int 21h

    mov ah,09
    lea dx,msg8
    int 21h

    mov ah,02
    mov dl,bl
    int 21h

    jmp fim

fim:
    mov ah,09
    lea dx,msg12
    int 21h

    mov ah,4ch
    int 21h
    main endp
    include add_main.asm
    include sub_main.asm
    include mul_main.asm
    include div_main.asm
    end main