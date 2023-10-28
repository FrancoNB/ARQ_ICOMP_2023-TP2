`timescale 1ns / 1ps

`include "fifo.vh"
`include "common.vh"

module fifo
    #(
        parameter FIFO_SIZE  = `FIFO_SIZE,
        parameter WORD_WIDTH = `WORD_WIDTH
    )
    (
        input  wire                      clk,
        input  wire                      reset,
        input  wire [WORD_WIDTH - 1 : 0] w_data,
        input  wire                      wr,
        input  wire                      rd,
        output wire [WORD_WIDTH - 1 : 0] r_data,
        output wire                      full,
        output wire                      empty
    );
    
    reg [$clog2(FIFO_SIZE) - 1 : 0] array_reg [FIFO_SIZE - 1 : 0];
    reg [WORD_WIDTH - 1 : 0]        w_ptr_reg, w_ptr_next, w_ptr_succ;
    reg [WORD_WIDTH - 1 : 0]        r_ptr_reg, r_ptr_next, r_ptr_succ;
    reg                             full_reg, full_next;
    reg                             empty_reg, empty_next;
    
    wire wr_en;
    
    always @(posedge clk)
    begin
        if (wr_en)
            array_reg[w_ptr_reg] <= w_data;
    end
    
    assign r_data = array_reg[r_ptr_reg];
    assign wr_en  = wr & ~full_reg;
    
    always @(posedge clk, posedge reset)
    begin
        if (reset)
            begin
                w_ptr_reg <= `CLEAR(WORD_WIDTH);
                r_ptr_reg <= `CLEAR(WORD_WIDTH);
                full_reg  <= `LOW;
                empty_reg <= `HIGH;
            end
        else
            begin
                w_ptr_reg <= w_ptr_next;
                r_ptr_reg <= r_ptr_next;
                full_reg  <= full_next;
                empty_reg <= empty_next;
            end
    end
    
    always @(*)
    begin
        w_ptr_succ = w_ptr_reg + 1;  
        r_ptr_succ = r_ptr_reg + 1;
        
        w_ptr_next = w_ptr_reg;
        r_ptr_next = r_ptr_reg;
        
        full_next  = full_reg;
        empty_next = empty_reg;
        
        case({wr, rd})
            `STATE_READ:
                begin
                    if(~empty_reg)
                        begin
                            r_ptr_next = r_ptr_succ;
                            full_next  = `LOW;
                            
                            if (r_ptr_succ == w_ptr_reg)
                                empty_next = `HIGH;
                        end
                end
            
            `STATE_WRITE:
                begin
                    if (~full_reg)
                        begin
                            w_ptr_next = w_ptr_succ;
                            empty_next  = `LOW;
                            
                            if (w_ptr_succ == r_ptr_reg)
                                full_next = `HIGH;
                        end 
                end   
                    
            `STATE_READ_AND_WRITE:
                begin
                    w_ptr_next = w_ptr_succ;
                    r_ptr_next = r_ptr_succ;
                end        
        endcase
    end
    
    assign full  = full_reg;
    assign empty = empty_reg;    
    
endmodule
