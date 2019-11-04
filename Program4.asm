; Colton Steinbeck
; Program 4
; October 21, 2019
;Hopefully this works and we can get a beer soon!
;;;;;;;;;;;;;;;;;;;;;;;; TEST CASE 1 ;;;;;;;;;;;;;;;;;;;;;;;;;
ROWS:		EQU	5	; defines a constant ROWS set to 5.
COLS:      EQU	7	; defines a constant COLS set to 7.

SECTION .data
MyMatrix: 	dd	  1,2,3,4,5,6,7
	    	dd	  8,9,10,11,12,13,14
            dd    15,16,17,18,19,20,21
            dd    22,23,24,25,26,27,28
            dd    29,30,31,32,33,34,35
Count:      dd    0
SECTION .bss
RowSums:	RESD ROWS
ColSums:	RESD COLS
Sum:		RESD 1

SECTION .text
global _main
_main:
mov ebx, MyMatrix
mov edx,RowSums
mov eax, 0
mov ecx, ROWS


rLoop:
mov DWORD[Count],ecx
mov ecx,COLS
cLoop:
add eax,DWORD[ebx]
add ebx,4
loop cLoop
add DWORD[edx],eax
add edx,4
mov ecx,DWORD[Count]
xor eax,eax
loop rLoop
b1:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
xor ebx,ebx
xor edx,edx
xor eax,eax
xor ecx,ecx

mov ebx, MyMatrix
mov edx,ColSums
mov eax,0
mov ecx, COLS

cLoop2:
mov DWORD[Count],ecx
mov ecx, ROWS
rloop2:
add eax,DWORD[ebx]
add ebx,4*COLS
loop rloop2
add DWORD[edx],eax
add edx,4
sub ebx,4*COLS*ROWS
add ebx,4
mov ecx,DWORD[Count]
xor eax,eax
cLoop2
b2:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
xor ebx,ebx
xor edx,edx
xor eax,eax
xor ecx,ecx

mov ebx,RowSums
mov edx,Sum
mov eax,0
mov ecx,ROWS

rSum:
add eax,DWORD[ebx]
add ebx,4
loop rSum
mov DWORD[edx],eax
b3:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

xor eax,eax
xor ebx,ebx
xor ecx,ecx

mov ebx,ColSums
mov eax,0
mov ecx,COLS

cSum:
add eax,DWORD[ebx]
add ebx,4
loop cSum
add DWORD[edx],eax
b4:
lastBreak:

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

