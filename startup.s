.global _start
_start:
    /* Set up the stack pointer */
    ldr sp, =0x8000

    /* Call the main function */
    bl main

    /* Infinite loop to prevent exit */
    b .
