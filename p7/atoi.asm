;;Colton Steinbeck
;;Program 7: ATOI



SEGMENT .data
; define data/variables here.  Think DB, DW, DD, DQ

ascii1: db 0
ascii2: db '322',0      ; You may need to replace these quotes on assemble.
ascii3: db '87654',0


SECTION .text
global _main , _times10 ,_atoi
_main:
xor eax, eax
mov esi,ascii1
call _atoi
b1:

xor eax, eax
mov esi,ascii2
call _atoi
b2:

xor eax,eax
mov esi,ascii3
call _atoi
b3:

;Termination code
mov eax, 1
mov ebx, 0
int 80h

_times10:

mov ebx,eax
shl eax,3
shl ebx,1
add eax,ebx
ret

_atoi:
movzx edx, byte [esi]
cmp edx,0
je done
sub edx,'0'
call _times10
add eax,edx
add esi,1
jmp _atoi
done:
 ret
