`ifndef __INTF_UART_ALU_VH__
`define __INTF_UART_ALU_VH__
    `define IO_BUS_WIDTH         8
    `define OP_CODE_WIDTH        6
    
    `define SELECTOR_REG_SIZE    2
    `define SELECT_IN_DATA_A     2'b00
    `define SELECT_IN_DATA_B     2'b01
    `define SELECT_IN_OP_CODE    2'b10 

    `define INTF_STATE_REG_SIZE       2
    `define INTF_STATE_WAIT_READ      2'b00 
    `define INTF_STATE_READ           2'b01
    `define INTF_STATE_WAIT_WRITE     2'b10
    `define INTF_STATE_WRITE          2'b11
`endif // __INTF_UART_ALU_VH__