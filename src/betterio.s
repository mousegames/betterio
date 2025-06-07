.global write
.global read
.global open
.global close

.text

write:
mov $1, %rax
syscall
ret

read:
mov $0, %rax
syscall
ret

open:
mov $2, %rax
syscall
ret

close:
mov $3, %rax
syscall
ret
