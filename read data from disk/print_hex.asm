print_hex:
    mov si, HEX_TEMPLATE

    mov bx, dx
    shr bx, 12
    mov bx, [bx+HEXABET]
    mov [HEX_TEMPLATE+2], bl

    mov bx, dx 
    shr bx, 8
    and bx, 0x000f
    mov bx, [bx+HEXABET]
    mov [HEX_TEMPLATE+3], bl

    mov bx, dx 
    shr bx, 4
    and bx, 0x000f
    mov bx, [bx+HEXABET]
    mov [HEX_TEMPLATE+4], bl

    mov bx, dx
    and bx, 0x000f
    mov bx, [bx+HEXABET]
    mov [HEX_TEMPLATE+5], bl

    call print_string

    ret

HEX_TEMPLATE: db '0x????' , 0
HEXABET: db '0123456789abcdef'