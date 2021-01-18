; Colton Steinbeck
; Hw 6
; October 4, 2019
; Etc...

;REDUX
SECTION .data
; define data/variables here.  Think DB, DW, DD, DQ
wArray1 :          DW         1
wArray2 :          DW         2
wArray3 :          DW         3
addUp   :          DW         0

SECTION .text
global _main
_main:

; put your code here.
xor ax, ax
mov ax,WORD[wArray1+0]

xor bx,bx
mov bx, WORD[wArray2+0]

xor cx, cx
mov cx, WORD[wArray3+0]

xor dx, dx
add ax, bx
add ax, cx
mov WORD[addUp], ax

sumBreak:
; Normal termination code
mov eax, 1
mov ebx, 0
int 80h

