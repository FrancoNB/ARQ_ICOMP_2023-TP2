`timescale 1ns / 1ps

`include "fifo.vh"
`include "common.vh"

`define REPEAT_TIMES 20

module tb_fifo
    #(
        parameter FIFO_SIZE   = `FIFO_SIZE,
        parameter WORD_WIDTH  = `WORD_WIDTH
    );
    
    reg  [WORD_WIDTH - 1 : 0] w_data;
    reg                       wr, rd, clock, reset;
    wire [WORD_WIDTH - 1 : 0] r_data;
    wire                      full, empty;
    
    always #5 clock = ~clock;
    
    task automatic generate_randoms();
    begin
        w_data = $random % (2 ** WORD_WIDTH);
    end
    endtask
    
    task write();
    begin
        #5 wr = `HIGH;
        
        $display("Dato leído: %h", w_data);
        
        #5 wr = `LOW;
    end
    endtask
    
    task read();
    begin
        #5 rd = `HIGH;
        
        $display("Dato leído: %h", r_data);
        
        #5 rd = `LOW;
    end
    endtask
        
    initial
    begin
        clock  = `LOW;
        reset  = `LOW;
        wr     = `LOW;
        rd     = `LOW;
        w_data = `LOW;
        #10 @(posedge clock) reset  = `HIGH;
        #10 @(posedge clock) reset  = `LOW;
        #10;
        
        repeat (`REPEAT_TIMES)
        begin
            generate_randoms();
            
            write();
            
            if ($urandom_range(0, 1) & 1) 
                read();
            
            if (empty && r_data == 0)
                $display("El estado 'empty' es correcto");
            else if (!empty && r_data > 0)
                $display("El estado 'empty' es correcto");
            else
                $display("El estado 'empty' es incorrecto");
                
            #10;
        end
        
        $finish;
    end
    
    fifo #(
        .FIFO_SIZE(FIFO_SIZE),
        .WORD_WIDTH(WORD_WIDTH)
    ) uut (
        .w_data(w_data),
        .wr(wr),
        .rd(rd),
        .reset(reset),
        .r_data(r_data),
        .full(full),
        .empty(empty)
    );
endmodule
