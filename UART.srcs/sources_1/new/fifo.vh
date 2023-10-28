`ifndef __FIFO_VH__
`define __FIFO_VH__
    `define FIFO_SIZE            64
    `define WORD_WIDTH           8
    
    `define STATE_READ           2'b01
    `define STATE_WRITE          2'b10
    `define STATE_READ_AND_WRITE 2'b11
`endif // __FIFO_VH__