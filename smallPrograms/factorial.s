.section .data
# No global data
.section .text
.globl _start
#
# NOT WORKING           
#
_start:
    mov $4, %rdi          # Move the argument (4) into %rdi (factorial(4))
    call factorial        # Call the factorial function
    mov %rax, %rdi        # Move the result into %rdi for the exit status
    mov $60, %rax         # syscall: exit
    syscall               # Invoke the system call

.type factorial,@function
factorial:
    push %rbp             # Save base pointer
    mov %rsp, %rbp        # Set base pointer

    mov %rdi, %rsi        # Save the original value of %rdi into %rsi

    cmp $1, %rdi          # Compare the argument with 1 (base case)
    je end_factorial      # If equal, jump to end (base case)
    
    dec %rdi              # Decrement the argument
    call factorial        # Recursive call with factorial(n-1)
    
    imul %rsi, %rax       # Multiply return value by the original value in %rsi
end_factorial:
    mov %rbp, %rsp        # Restore the stack pointer
    pop %rbp              # Restore the base pointer
    ret                   # Return to the caller
