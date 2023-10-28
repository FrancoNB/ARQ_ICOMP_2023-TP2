`timescale 1ns / 1ps

`include "uart.vh"
`include "intf_uart_alu.vh"

module top_level
    #(
        parameter DATA_BITS    = `DATA_BITS,
        parameter OP_CODE_BITS = `OP_CODE_WIDTH,
        parameter SB_TICKS     = `SB_TICKS,
        parameter DVSR_BIT     = `DVSR_BIT,
        parameter DVSR         = `DVSR,
        parameter FIFO_SIZE    = `FIFO_SIZE
    )
    (
        input  wire clk,
        input  wire reset,
        input  wire rx,
        output wire rx_empty,
        output wire tx_full,
        output wire tx
    );
             
    wire                        uart_rd;
    wire                        uart_wr;
    wire [DATA_BITS - 1 : 0]    tx_fifo_in;
    wire [DATA_BITS - 1 : 0]    rx_fifo_out;
    wire [OP_CODE_BITS - 1 : 0] alu_op_code;
    wire [DATA_BITS - 1 : 0]    alu_data_a;
    wire [DATA_BITS - 1 : 0]    alu_data_b;
    wire [DATA_BITS - 1 : 0]    alu_result;
    
    uart
    #(
      .DATA_BITS (DATA_BITS),
      .SB_TICKS  (SB_TICKS),
      .DVSR_BIT  (DVSR_BIT),
      .DVSR      (DVSR),
      .FIFO_SIZE (FIFO_SIZE)
    )
    uart_unit
    (
      .clk      (clk),
      .reset    (reset),
      .rd_uart  (uart_rd),
      .wr_uart  (uart_wr),
      .rx       (rx),
      .w_data   (tx_fifo_in),
      .tx_full  (tx_full),
      .rx_empty (rx_empty),
      .tx       (tx),
      .r_data   (rx_fifo_out)
    );
    
    alu
    #(
      .IO_BUS_WIDTH  (DATA_BITS),
      .OP_CODE_WIDTH (OP_CODE_BITS)
    )
    alu_unit
    (
      .op_code (alu_op_code),
      .data_a  (alu_data_a),
      .data_b  (alu_data_b),
      .out_data(alu_result)
    );
    
    intf_uart_alu
    #(
      .IO_BUS_WIDTH  (DATA_BITS),
      .OP_CODE_WIDTH (OP_CODE_BITS)
    )
    intf_uart_alu_unit
    (
      .clk         (clk),
      .reset       (reset),
      .uart_empty  (rx_empty),
      .uart_full   (tx_full),
      .uart_rx     (rx_fifo_out),
      .alu_result  (alu_result),
      .uart_wr     (uart_wr),
      .uart_rd     (uart_rd),
      .uart_tx     (tx_fifo_in),
      .alu_op_code (alu_op_code),
      .alu_data_a  (alu_data_a),
      .alu_data_b  (alu_data_b)
    );
endmodule
