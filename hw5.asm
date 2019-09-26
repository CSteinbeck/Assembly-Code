q
;Colton Steinbeck
;Assignment
;Date
;etc

SECTION .data



SECTION .text
global _main
_main:

 mov ax 024Ah
 mov bx 0CDABh
 add ax,bx
 a1:

mov ax 0ABCDh
mov bx 0DC5Ah
add ax,bx
a2:

mov ax 0F8F8h
mov bx 0808h
add ax,bx
a3:

mov ax 0F0F0h
mov bx 0FF00h
add ax,bx
a4:

mov ax 0D468h
mov bx 0001h
add ax,bx
a5:


mov ax 07FFFh
mov bx 0001h
add ax,bx
a6:


mov ax 0ABCDh
mov bx 0ABCDh
add ax,bx
a7:


mov ax 0B0Bh
mov bx 0A11Eh
add ax,bx
a8:


mov ax 7777h
mov bx 7777h
add ax,bx
a9:


mov ax 8000h
mov bx 8000h
add ax,bx
a10:


; Normal termination code
mov eax, 1
mov ebx, 0
int 80h