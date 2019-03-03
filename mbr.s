.code16

.globl _start
.section .text
_start:
mov %cs, %ax
mov %ax, %ds
mov %ax, %es
mov %ax, %ss
mov %ax, %fs
mov $0x7c00, %sp

mov $0x600, %ax
mov $0x700, %bx
mov $0, %cx
mov $0x184f, %dx

int $0x10

mov $3, %ah
mov $0, %bh

int $0x10

mov $message, %ax
mov %ax, %bp

mov $5, %cx
mov $0x1301, %ax

mov $0x2, %bx

int $0x10

jmp .

message:
.ascii "1 MBR"
.fill 510 - (. - _start)
.word 0xaa55
