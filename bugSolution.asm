; Check for potential overflow before calculation
mov edx, ecx
mov eax, 4
imul edx, eax ; edx:eax = ecx * 4
jnc no_overflow ; Jump if no carry (no overflow)
; Handle overflow error (e.g., display an error message or exit)
; ... error handling code ... 
jmp end
no_overflow:
add eax, ebx ; add ebx to the lower 32 bits of the result
jnc no_overflow2 ; Jump if no carry (no overflow)
; Handle overflow error (e.g., display an error message or exit)
; ... error handling code ... 
jmp end
no_overflow2:
mov eax, [eax]; Access memory at calculated address
end: