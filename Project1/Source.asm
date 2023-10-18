include Irvine32.inc

.data
    MyID DWORD 0
.code

fact PROC
start:
    cmp ebx, 1
    jz e
    jb e ;MyID == 0
    jmp rec
rec:
    mov edx, ebx
    dec ebx
    mul ebx
    
    call fact
    jmp start 
e:
    ret
fact ENDP

Main PROC
    mov ebx, MyID
    mov eax, ebx
    call fact
    
    exit
main ENDP
END main