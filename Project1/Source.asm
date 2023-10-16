title HW1
include Irvine32.inc

.data 
	MyID DWORD ?
	Digit0 BYTE 2
	Digit1 BYTE 5
	Digit2 BYTE 5
	Digit3 BYTE 5

.code 
main PROC

L1: movsx eax, Digit0
	shl eax, 8

	movsx ebx, Digit1
	add eax, ebx
	shl eax, 8

	movsx ebx, Digit2
	add eax, ebx
	shl eax, 8

	movsx ebx, Digit3
	add eax, ebx

	mov MyID, eax

	exit

main ENDP
END main
