SECTIONS
{
    . = 0x10000; /* Start address */

    .text : {
        KEEP(*(.isr_vector))
        *(.text)
    }

    .data : {
        *(.data)
    }

    .bss : {
        *(.bss)
    }
}
