	section .data
	msg db "jojothomas", 0x0a, 0x00
	m_len equ $-msg

	section .bss
	num resb 1

	section .text
	global _start

_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, m_len
	int 0x80

	mov [num], BYTE 1
	mov eax, [num]
	add eax, 1
	add eax, '0'
	mov [num], eax

	mov eax, 4
	mov ebx, 1
	mov ecx, num
	mov edx, 1

	mov ecx, 1
	mov edx, 2
	call adder

	add ecx, edx
	add ecx, '0'
	mov [num], ecx

	mov eax, 4
	mov ebx, 1
	mov ecx, num
	mov edx, 1
	
	int 0x80
	mov eax, 1
	int 0x80

adder:
	push ebp
	mov ebp, esp
	push ecx
	push edx
	mov eax, ecx
	add eax, edx
	mov ecx, 3
	mov edx, 5
	pop edx
	pop ecx
	pop ebp
	ret
