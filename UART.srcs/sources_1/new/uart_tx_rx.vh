`ifndef __UART__TX_RX_VH__
`define __UART__TX_RX_VH__
    `define HIGH 1'b1
    `define LOW  1'b0
    
    `define DATA_BITS      8
    `define SB_TICKS       16
    
    `define STATES_NUMBERS 4
    `define STATE_IDLE     3'b00 
    `define STATE_START    3'b01
    `define STATE_DATA     3'b10
    `define STATE_STOP     3'b11

    `define STATE_REG_SIZE $clog2(`STATES_NUMBERS)
    `define B_REG_SIZE     DATA_BITS
    `define N_REG_SIZE     $clog2(DATA_BITS)
    `define S_REG_SIZE     $clog2(SB_TICKS)

    `define CLEAR(len) { len {`LOW}}
    `define SET  (len) { len {`HIGH}}
`endif // __UART__TX_RX_VH__