`timescale 1ns / 1ps

`include "intf_uart_alu.vh"
`include "common.vh"

module intf_uart_alu
    #(
        parameter IO_BUS_WIDTH  = `IO_BUS_WIDTH,
        parameter OP_CODE_WIDTH = `OP_CODE_WIDTH
    )
    (
        input  wire                         clk,
        input  wire                         reset,
        input  wire                         uart_empty,
        input  wire                         uart_full,               
        input  wire [IO_BUS_WIDTH - 1 : 0]  uart_rx,
        input  wire [IO_BUS_WIDTH - 1 : 0]  alu_result,  
        output wire                         uart_wr,
        output wire                         uart_rd,
        output wire [IO_BUS_WIDTH - 1 : 0]  uart_tx,
        output wire [OP_CODE_WIDTH - 1 : 0] alu_op_code,
        output wire [IO_BUS_WIDTH - 1 : 0]  alu_data_a,
        output wire [IO_BUS_WIDTH - 1 : 0]  alu_data_b
    );

    reg [`INTF_STATE_REG_SIZE - 1 : 0] state_reg, state_next;
    reg [`SELECTOR_REG_SIZE - 1 : 0]   selector_reg;
    reg [IO_BUS_WIDTH - 1 : 0]         data_a_reg, data_b_reg;
    reg [OP_CODE_WIDTH - 1 : 0]        op_code_reg;
    reg [IO_BUS_WIDTH - 1 : 0]         result_reg;
    reg                                uart_rd_reg, uart_wr_reg;
    
    always @ (posedge clk, posedge reset)
    begin
        if (reset)
            begin
                state_next   <= `INTF_STATE_READ;
                data_a_reg   <= `CLEAR(IO_BUS_WIDTH);
                data_b_reg   <= `CLEAR(IO_BUS_WIDTH);
                op_code_reg  <= `CLEAR(OP_CODE_WIDTH);
                result_reg   <= `CLEAR(IO_BUS_WIDTH);
                selector_reg <= `CLEAR(2);
            end
        else          
            begin
                state_reg   = state_next;
                uart_wr_reg = `LOW;
                uart_rd_reg = `LOW;
                        
                case(state_reg)
                    `INTF_STATE_IDLE : 
                    begin
                        if (selector_reg == `SELECT_IN_OP_CODE + 1)
                            begin
                                state_next   = `INTF_STATE_WRITE;
                                selector_reg = `CLEAR(2);
                            end
                        else
                            state_next = `INTF_STATE_READ;
                    end
                        
                    `INTF_STATE_READ:
                    begin
                        if (~uart_empty)
                            begin
                                case(selector_reg)
                                    `SELECT_IN_DATA_A  : data_a_reg  = uart_rx;
                                    `SELECT_IN_DATA_B  : data_b_reg  = uart_rx;
                                    `SELECT_IN_OP_CODE : op_code_reg = uart_rx[OP_CODE_WIDTH - 1 : 0];
                                    default:;
                                endcase
                                
                                uart_rd_reg = `HIGH;
                                
                                selector_reg = selector_reg + 1;
                                
                                state_next  = `INTF_STATE_IDLE;
                            end
                    end
            
                    `INTF_STATE_WRITE:
                     begin
                        if (~uart_full)
                            begin
                                result_reg   = alu_result;
                                uart_wr_reg = `HIGH;
                                state_next  = `INTF_STATE_IDLE;
                            end
                     end
                     
                     default:;
                endcase   
            end     
    end
    
    assign alu_op_code = op_code_reg; 
    assign alu_data_a  = data_a_reg; 
    assign alu_data_b  = data_b_reg; 
    assign uart_tx     = result_reg;
    assign uart_rd     = uart_rd_reg;
    assign uart_wr     = uart_wr_reg;
           
endmodule