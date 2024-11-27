#define ISR 1

#if ISR
void I3CRX_Handler(void);

__attribute__((section(".isr_vector")))
unsigned int *isr_vectors[] = {
    0x0,                // stack
    0x0,                //Reset_Handler,
    0x0,                //NMI_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    0x0,                //HardFault_Handler,
    (unsigned int *)I3CRX_Handler,  //I3CRX_Handler,
};

void I3CRX_Handler(void)
{
    volatile unsigned int *IRQ_STS = (unsigned int *)0x101f1070;
    volatile unsigned int *RX_FIFO_REG = (unsigned int *)0x101f1080;
    volatile unsigned int *tar_get_addr = (unsigned int *)0x101f1090;
    unsigned int i = 0;
    *(tar_get_addr + i) =  *RX_FIFO_REG;
    i += 0x4;
    *IRQ_STS = 0; // clear interrupt
}
#endif

void I3C_Slave_Init() {
    volatile unsigned int *HW_CAPABILITY = (unsigned int *)0x101f1000;
    volatile unsigned int *QUEUE_THLD_CTRL = (unsigned int *)0x101f1004;
    volatile unsigned int *DATA_BUFFER_THLD_CTRL = (unsigned int *)0x101f1008;
    volatile unsigned int *INTR_STATUS_EN = (unsigned int *)0x101f100C;
    volatile unsigned int *INTR_SIGNAL_EN = (unsigned int *)0x101f1010;

    volatile unsigned int *BUS_FREE_AVAIL_TIMING = (unsigned int *)0x101f1040;
    volatile unsigned int *BUS_IDLE_TIMING = (unsigned int *)0x101f1044;
    volatile unsigned int *DEVICE_CTRL = (unsigned int *)0x101f1048;
    volatile unsigned int *DEVICE_ADDR = (unsigned int *)0x101f1054;
    volatile unsigned int *SLV_TSX_SYMBL_TIMING = (unsigned int *)0x101f1058;
    volatile unsigned int *MAX_DATA_SPEED = (unsigned int *)0x101f1060;

    volatile unsigned int *CCC_UPDATED_STS = (unsigned int *)0x101f1020;
    volatile unsigned int *DYN_ADDR_ASSGN_STS = (unsigned int *)0x101f1024;
    volatile unsigned int *DEFSLV_STS = (unsigned int *)0x101f1028;
    volatile unsigned int *READ_REQ_RECV_STS = (unsigned int *)0x101f102c;
    volatile unsigned int *IBI_UPDATED_STS = (unsigned int *)0x101f1030;
    volatile unsigned int *BUSOWNER_UPDATED_STS = (unsigned int *)0x101f1034;

    // HW_CAPABILITY[DEVICE_ROLE_CONFIG] = SLAVE
    *HW_CAPABILITY = 0xdeadbeef;
    // Common Register Initialization
    *QUEUE_THLD_CTRL = 0xdeadbeef;
    *QUEUE_THLD_CTRL = 0xdeadbeef;
    *QUEUE_THLD_CTRL = 0xdeadbeef;
    *QUEUE_THLD_CTRL = 0xdeadbeef;
    *DATA_BUFFER_THLD_CTRL = 0xdeadbeef;
    *DATA_BUFFER_THLD_CTRL = 0xdeadbeef;
    *DATA_BUFFER_THLD_CTRL = 0xdeadbeef;
    *DATA_BUFFER_THLD_CTRL = 0xdeadbeef;
    *QUEUE_THLD_CTRL = 0xdeadbeef;
    // Interrupt Related Registers
    *INTR_STATUS_EN = 0xdeadbeef;
    *INTR_SIGNAL_EN = 0xdeadbeef;

    // Initializing Slave Register
    *BUS_FREE_AVAIL_TIMING = 0xdeadbeaf;
    *BUS_IDLE_TIMING = 0xdeadbeaf;
    *DEVICE_CTRL = 0xdeadbeaf;
    *DEVICE_CTRL = 0xdeadbeaf;
    *DEVICE_ADDR = 0xdeadbeaf;
    *DEVICE_ADDR = 0xdeadbeaf;
    *SLV_TSX_SYMBL_TIMING = 0xdeadbeaf;
    *MAX_DATA_SPEED = 0xdeadbeaf;
    *MAX_DATA_SPEED = 0xdeadbeaf;
    // Initializing Slave Interrupt Related Registers
    *CCC_UPDATED_STS = 0xdeadbeaf;
    *DYN_ADDR_ASSGN_STS = 0xdeadbeaf;
    *DEFSLV_STS = 0xdeadbeaf;
    *READ_REQ_RECV_STS = 0xdeadbeaf;
    *IBI_UPDATED_STS = 0xdeadbeaf;
    *BUSOWNER_UPDATED_STS =  0xdeadbeaf;
    // Enable the controller
    *DEVICE_CTRL = 0xdeadbeaf;
}

#if !ISR
// polling register
void I3C_Slave_Receive() {
    volatile unsigned int *IRQ_STS = (unsigned int *)0x101f1070;
    volatile unsigned int *RX_FIFO_REG = (unsigned int *)0x101f1080;
    volatile unsigned int *tar_get_addr = (unsigned int *)0x101f1090;
    unsigned int i = 0;
    while(1) {
        while (!*IRQ_STS) {
            *(tar_get_addr + i) =  *RX_FIFO_REG;
            i += 0x4;
            *IRQ_STS = 0; // clear interrupt
        }
    }
}
#endif

int main() {
#if 1
    volatile unsigned int *RX_FIFO_REG = (unsigned int *)0x101f1080;
    *RX_FIFO_REG = 0xdeadbeef;
    volatile unsigned int *RX_FIFO_REG_1 = (unsigned int *)0x101f1080;
    *RX_FIFO_REG_1 = 0xdeadbeef;
    *RX_FIFO_REG_1 = 0xdeadbeef;
#endif
    I3C_Slave_Init();
#if !ISR
    I3C_Slave_Receive();
#else
    volatile unsigned int *SCB_VTOR = (unsigned int *)0x101f1f90;
    *SCB_VTOR = (unsigned int)isr_vectors;
    while(1);
#endif

    return 0;
}

