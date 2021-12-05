bits 32

section .data
    msg_content db 'hello,asm!'

section .text

global _cdecl_sample
global _stdcall_sample@4
global @fastcall_sample@4

_cdecl_sample:
    mov eax, [esp+4]
    cmp eax, 0
    mov eax, msg_content
    jz cdecl1
    jmp cdecl2
    cdecl1:
    ret
    cdecl2:
    add eax, 6
    ret

_stdcall_sample@4:
    mov eax, [esp+4]
    cmp eax, 0
    mov eax, [esp]
    mov [esp+4], eax ; restore EIP
    add esp, 4
    mov eax, msg_content
    jz stdcall1
    jmp stdcall2
    stdcall1:
    ret
    stdcall2:
    add eax, 6
    ret

@fastcall_sample@4:
    cmp ecx, 0
    mov eax, msg_content
    jz cdecl1
    jmp cdecl2
    fastcall1:
    ret
    fastcall2:
    add eax, 6
    ret