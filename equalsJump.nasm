section .data
    y db "Yes", 0  ; Null-terminated string "Yes"
    n db "No", 0   ; Null-terminated string "No"

section .text
global bool_to_word

; Returns "Yes" if the argument is nonzero, "No" if the argument is 0
bool_to_word:
    cmp rdi, 0          ; Compare the argument in rdi with 0
    jne return_yes      ; If rdi is not 0, jump to return_yes
    ;!=
    
    ; If rdi is 0
    lea rax, [n]        ; Load the address of "No" into rax
    ret                 ; Return the address

return_yes:
    lea rax, [y]        ; Load the address of "Yes" into rax
    ret                 ; Return the address
