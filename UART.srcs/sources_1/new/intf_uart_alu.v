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

    reg [`INTF_STATE_REG_SIZE - 1 : 0]    state_reg, state_next;
    reg [`SELECTOR_REG_SIZE - 1 : 0] selector_reg, selector_next;
    reg [IO_BUS_WIDTH - 1 : 0]       data_a_reg, data_b_reg, data_a_next, data_b_next;
    reg [OP_CODE_WIDTH - 1 : 0]      op_code_reg, op_code_next;
    reg [IO_BUS_WIDTH - 1 : 0]       result_reg, result_next;
    reg                              uart_rd_reg, uart_wr_reg, uart_rd_next, uart_wr_next;

    always @ (posedge clk, posedge reset) 
    begin
        if (reset)
            begin
                state_reg    <= `INTF_STATE_WAIT_READ;
                op_code_reg  <= `CLEAR(OP_CODE_WIDTH);
                data_a_reg   <= `CLEAR(IO_BUS_WIDTH);
                data_b_reg   <= `CLEAR(IO_BUS_WIDTH);
                result_reg   <= `CLEAR(IO_BUS_WIDTH);
                selector_reg <= `CLEAR(2);
                uart_rd_reg  <= `LOW;
                uart_wr_reg  <= `LOW;
            end
        else
            begin
                state_reg    <= state_next;
                result_reg   <= result_next;
                selector_reg <= selector_next;
                op_code_reg  <= op_code_next;
                data_a_reg   <= data_a_next;
                data_b_reg   <= data_b_next;
                uart_rd_reg  <= uart_rd_next;
                uart_wr_reg  <= uart_wr_next;
            end
    end
    
    always @ (*)
    begin
        uart_rd_next  = `LOW;
        uart_wr_next  = `LOW;
        op_code_next  = op_code_reg;
        data_a_next   = data_a_reg;
        data_b_next   = data_b_reg;
        state_next    = state_reg;
        result_next   = result_reg;
        selector_next = selector_reg;
        
        case(state_reg)
            `INTF_STATE_WAIT_READ:
            begin
                if (~uart_empty)
                    begin
                        uart_rd_next = `HIGH;
                        state_next   = `INTF_STATE_READ;
                    end
            end
            
            `INTF_STATE_READ:
            begin
                case(selector_reg)
                    `SELECT_IN_DATA_A  : data_a_next  = uart_rx;
                    `SELECT_IN_DATA_B  : data_b_next  = uart_rx;
                    `SELECT_IN_OP_CODE : op_code_next = uart_rx[OP_CODE_WIDTH - 1 : 0];
                    default:;
                endcase
                
                if (selector_reg == `SELECT_IN_OP_CODE)
                    begin
                        selector_next = `CLEAR(2);
                        state_next    = `INTF_STATE_WAIT_WRITE;
                    end
                else
                    begin
                        state_next    = `INTF_STATE_WAIT_READ;
                        selector_next = selector_reg + 1;
                    end
            end
            
            `INTF_STATE_WAIT_WRITE:
            begin
                if (~uart_full)
                begin
                    uart_wr_next = `HIGH;
                    result_next = alu_result;     
                    state_next  = `INTF_STATE_WRITE;
                end
            end
            
            `INTF_STATE_WRITE:
            begin  
                state_next   = `INTF_STATE_WAIT_READ;
            end
        endcase        
    end
    
    assign alu_op_code = op_code_reg; 
    assign alu_data_a  = data_a_reg; 
    assign alu_data_b  = data_b_reg; 
    assign uart_tx     = result_reg;
    assign uart_rd     = uart_rd_reg;
    assign uart_wr     = uart_wr_reg;
           
endmodule
