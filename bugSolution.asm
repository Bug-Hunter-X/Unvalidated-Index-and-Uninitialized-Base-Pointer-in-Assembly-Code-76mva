section .data
array dd 10, 20, 30, 40, 50
arrayLength equ $-array
section .bss
index resd 1
section .text
global _start
_start:
; Prompt user for index
; ... (Code to get user input and store it in index)
; Validate index
mov eax, [index]
cmp eax, arrayLength
jge error_handler ; Handle out-of-bounds index
mov ebx, array ; Initialize base pointer
mov ecx, eax ; Use validated index
mov eax, [ebx+ecx*4] ; Access array element
; ... (Code to process the array element)
jmp exit
error_handler:
; Handle out-of-bounds error
; ... (Error handling code)
exit:
; Exit program
mov eax, 1
xor ebx, ebx
int 0x80