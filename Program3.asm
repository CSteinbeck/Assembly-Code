;Colton Stieinbeck
; Hw #6
; October 9th 2019
; Etc...

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ
Fibs:		DW	0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0

SECTION .text
global _main
_main:

mov ebx, Fibs
mov ax,[ebx]
add ax,[ebx+2]
mov [ebx+4],ax
add ebx,2

mov ebx, Fibs
mov ax,[ebx+2]
add ax,[ebx+4]
mov [ebx+6],ax
add ebx,2


mov ebx, Fibs
mov ax,[ebx+4]
add ax,[ebx+6]
mov [ebx+8],ax
add ebx,2


mov ebx, Fibs
mov ax,[ebx+6]
add ax,[ebx+8]
mov [ebx+10],ax
add ebx,2


mov ebx, Fibs
mov ax,[ebx+8]
add ax,[ebx+10]
mov [ebx+12],ax
add ebx,2


mov ebx, Fibs
mov ax,[ebx+10]
add ax,[ebx+12]
mov [ebx+14],ax
add ebx,2


mov ebx, Fibs
mov ax,[ebx+12]
add ax,[ebx+14]
mov [ebx+16],ax
add ebx,2



mov ebx, Fibs
mov ax,[ebx+14]
add ax,[ebx+16]
mov [ebx+18],ax
add ebx,2


mov ebx, Fibs
mov ax,[ebx+16]
add ax,[ebx+18]
mov [ebx+20],ax
add ebx,2


mov ebx, Fibs
mov ax,[ebx+18]
add ax,[ebx+20]
mov [ebx+22],ax
add ebx,2


mov ebx, Fibs
mov ax,[ebx+20]
add ax,[ebx+22]
mov [ebx+24],ax
add ebx,2


mov ebx, Fibs
mov ax,[ebx+22]
add ax,[ebx+24]
mov [ebx+26],ax
add ebx,2


mov ebx, Fibs
mov ax,[ebx+24]
add ax,[ebx+26]
mov [ebx+28],ax
add ebx,2


mov ebx, Fibs
mov ax,[ebx+26]
add ax,[ebx+28]
mov [ebx+30],ax
add ebx,2

mov ebx, Fibs
mov ax,[ebx+28]
add ax,[ebx+30]
mov [ebx+32],ax
add ebx,2

; put your code here.



; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
~
~
~
~
~
~
~
~
~
~
~
~
~
~

; Date
; Etc...

SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ
Fibs: DW 0,1,0,0,OA0
SECTION .text
global _main
_main:

; put your code here.



; Normal termination code
mov eax, 1
mov ebx, 0
int 80h
