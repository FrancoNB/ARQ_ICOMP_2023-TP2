`timescale 1ns / 1ps

`include "fifo.vh"

module fifo
    #
    (
        parameter FIFO_SIZE  = `FIFO_SIZE,
        parameter WORD_WIDTH = `WORD_WIDTH
    )
    (
        input  wire  [WORD_WIDTH - 1 : 0] w_data,
        input  wire                       wr,
        input  wire                       rd,
        input  wire                       reset,
        output wire  [WORD_WIDTH - 1 : 0] r_data,
        output wire                       full,
        output wire                       empty
    );
    
    reg [WORD_WIDTH - 1 : 0]        buffer [0 : FIFO_SIZE - 1];
    
    reg [WORD_WIDTH - 1:0]          temp_data;
    reg [$clog2(FIFO_SIZE) - 1 : 0] fill_level; 
    reg [$clog2(FIFO_SIZE) - 1 : 0] i;

    always @(posedge wr or posedge rd or posedge reset)
    begin
        if (reset) 
        begin
            fill_level <= 0;
            temp_data  <= 0;
            
            for (i = 0; i < FIFO_SIZE - 1; i = i + 1)
                buffer[i] <= 0;
        end
        else
        begin
            if (wr && !full) 
            begin
                buffer[fill_level] <= w_data;
                fill_level         <= fill_level + 1;
            end
            
            if (rd && !empty)
            begin
                temp_data <= buffer[0];
                
                for (i = 0; i < fill_level - 1; i = i + 1)
                    buffer[i] <= buffer[i + 1];
    
                fill_level <= fill_level - 1;
            end
         end
    end

    assign full   = (fill_level == FIFO_SIZE);
    assign empty  = (fill_level == 0);
    assign r_data = temp_data;
    
endmodule
