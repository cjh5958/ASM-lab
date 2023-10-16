include Irvine32.inc

.data
    myID byte "111502555"  ; Team leader student ID
    myID2 byte "111502554" ; Team member student ID
    size_ID = 9    ; size_ID indicates the length of myID
    result byte 9 DUP(?)  ; save the result

.code
Main PROC
    mov esi, offset myID
    mov ebx, offset myID2
    mov edi, offset result
    mov ecx, size_ID

L1: 
    mov al, [esi]
    mov ah, [ebx]
    inc esi
    inc ebx
    cmp al, ah
    jz LA
    ja LB
    jb LC
    loop L1

LA:
    mov ax, 'A'
    mov [edi], ax
    inc edi
    loop L1
    jmp ED

LB:
    mov ax, 'B'
    mov [edi], ax
    inc edi
    loop L1
    jmp ED

LC:
    mov ax, 'C'
    mov [edi], ax
    inc edi
    loop L1
    jmp ED

ED:         ;to leave the loop
    exit    

main ENDP
END main