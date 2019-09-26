;Colton Steinbeck
;Program 1, CSC 322cd 
;September 24, 2019 
;Hopefully this works and you like it :)

SECTION .data
bArray:		DB		-1,-2,-3,-4,-5
wArray:		DW		0ah,0bh,0ch,0dh,0eh
dArray:		DD		-10,20,-30,40,-50
bArraySum:	DB		0
wArraySum:	DW		0
dArraySum:	DD		0
grandTotal:	DD		0

SECTION .text
global _main
_main:
xor al,al
mov al, BYTE[bArray+0]
add al, BYTE[bArray+1]
add al, BYTE[bArray+2] 
add al, BYTE[bArray+3]
add al, BYTE[bArray+4]
mov BYTE[bArraySum],al

b1:

xor ax,ax
mov ax, WORD[wArray+0]
add ax, WORD[wArray+2]
add ax, WORD[wArray+4]
add ax, WORD[wArray+6]
add ax, WORD[wArray+8]
mov WORD[wArraySum],ax

b2:

xor eax, eax
mov eax, DWORD[wArray+0]
add eax, DWORD[wArray+4]
add eax, DWORD[wArray+8]
add eax, DWORD[wArray+12]
add eax, DWORD[wArray+16]
mov DWORD[dArraySum], eax

b3:

xor eax, eax
add al, BYTE[bArraySum]
add ax, WORD[wArraySum]
add eax, DWORD[dArraySum]
mov DWORD[grandTotal], eax

lastBreak:
;Termination Code
mov eax, 1
mov ebx, 0; 
int 80h;

