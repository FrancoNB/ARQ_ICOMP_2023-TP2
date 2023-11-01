`timescale 1ns / 1ps

`include "common.vh"
`include "uart.vh"
`include "alu.vh"

`define REPEAT_TIMES 20

module top_level_tb
    #(
        parameter DATA_BITS     = `DATA_BITS,
        parameter OP_CODE_BITS  = `OP_CODE_WIDTH,
        parameter SB_TICKS      = `SB_TICKS,
        parameter DVSR_BIT      = `DVSR_BIT,
        parameter DVSR          = `DVSR,
        parameter FIFO_SIZE     = `FIFO_SIZE
    );
    
    reg                        clk;
    reg                        reset;
    reg                        rx;
    reg [DATA_BITS - 1 : 0]    data_a;
    reg [DATA_BITS - 1 : 0]    data_b;
    reg [DATA_BITS - 1 : 0]    w_data;
    reg [DATA_BITS - 1 : 0]    r_data;
    reg [2 : 0]                choise_op;
    wire                       tx_full;
    wire                       rx_empty;
    wire                       tx;
     
    always #10 clk = ~clk;
    
    integer i = 0;
    
    task automatic generate_randoms();
        begin
            data_a = $random % (2 ** DATA_BITS);
            data_b = $random % (2 ** DATA_BITS);
        end
    endtask
    
    task automatic send();
        begin 
            rx = `LOW;
            
            #(DVSR * SB_TICKS);
            
            for (i = 0; i < DATA_BITS; i = i + 1)
                begin
                    rx = w_data[i];
                    #(DVSR * SB_TICKS);
                end
            
            rx = `HIGH;
            
            #(DVSR * SB_TICKS);
        end
    endtask
    
    task automatic receive();
        begin
            while (tx)
                #20;
                
            #(DVSR * SB_TICKS);
            
            for (i = 0; i < DATA_BITS; i = i + 1)
                begin
                    r_data[i] = tx;
                    #(DVSR * SB_TICKS);
                end
            
            while (~tx)
                #20;
                
            #(DVSR * SB_TICKS);
        end
    endtask
    
    task automatic ADD();
        begin
            $display("Suma %b + %b", data_a, data_b);
            
            w_data  = `OP_ADD;
            send();
            #20;
            
            w_data = `CLEAR(DATA_BITS);
            receive();
            #20;
            
            if ((data_a + data_b) == r_data)
                $display("Respuesta correcta, resultado: %b", r_data);
            else
                $display("Respuesta incorrecta, resultado: esperado %b, resultado obtenido %b", (data_a + data_b), r_data);
        end
    endtask
    
    task automatic SUB();
        begin
            $display("Resta %b - %b", data_a, data_b);
        
            w_data  = `OP_SUB;
            send();
            #20;
            
            w_data = `CLEAR(DATA_BITS);
            receive();
            #20;
            
            if ((data_a - data_b) == r_data)
                $display("Respuesta correcta, resultado: %b", r_data);
            else
                $display("Respuesta incorrecta, resultado: esperado %b, resultado obtenido %b", (data_a - data_b), r_data);     
        end
    endtask

    task automatic AND();
        begin
            $display("And %b & %b", data_a, data_b);
        
            w_data  = `OP_AND;
            send();
            #20;
            
            w_data = `CLEAR(DATA_BITS);
            receive();
            #20;
            
            if ((data_a & data_b) == r_data)
                $display("Respuesta correcta, resultado: %b", r_data);
            else
                $display("Respuesta incorrecta, resultado: esperado %b, resultado obtenido %b", (data_a & data_b), r_data);
        end
    endtask

    task automatic OR();
        begin
            $display("Or %b | %b", data_a, data_b);
        
            w_data  = `OP_OR;
            send();
            #20;
            
            w_data = `CLEAR(DATA_BITS);
            receive();
            #20;
            
            if ((data_a | data_b) == r_data)
                $display("Respuesta correcta, resultado: %b", r_data);
            else
                $display("Respuesta incorrecta, resultado: esperado %b, resultado obtenido %b", (data_a | data_b), r_data);
        end
    endtask
    
    task automatic XOR();
        begin
            $display("Xor %b ^ %b", data_a, data_b);
        
            w_data  = `OP_XOR;
            send();
            #20;
            
            w_data = `CLEAR(DATA_BITS);
            receive();
            #20;
            
            if ((data_a ^ data_b) == r_data)
                $display("Respuesta correcta, resultado: %b", r_data);
            else
                $display("Respuesta incorrecta, resultado: esperado %b, resultado obtenido %b", (data_a ^ data_b), r_data);
        end
    endtask
    
    task automatic SRA();
        begin
            $display("Sra %b >>> %b", data_a, data_b);
        
            w_data  = `OP_SRA;
            send();
            #20;
            
            w_data = `CLEAR(DATA_BITS);
            receive();
            #20;
            
            if ((data_a >>> data_b) == r_data)
                $display("Respuesta correcta, resultado: %b", r_data);
            else
                $display("Respuesta incorrecta, resultado: esperado %b, resultado obtenido %b", (data_a >>> data_b), r_data);
        end
    endtask
    
    task automatic SRL();
        begin
            $display("Srl %b >> %b", data_a, data_b);
        
            w_data  = `OP_SRL;
            send();
            #20;
            
            w_data = `CLEAR(DATA_BITS);
            receive();
            #20;
            
            if ((data_a >> data_b) == r_data)
                $display("Respuesta correcta, resultado: %b", r_data);
            else
                $display("Respuesta incorrecta, resultado: esperado %b, resultado obtenido %b", (data_a >> data_b), r_data);
        end
    endtask

    task automatic NOR();
        begin
            $display("Nor ~(%b | %b)", data_a, data_b);
        
            w_data  = `OP_NOR;
            send();
            #20;
            
            w_data = `CLEAR(DATA_BITS);
            receive();
            #20;
            
            if (~(data_a | data_b) == r_data)
                $display("Respuesta correcta, resultado: %b", r_data);
            else
                $display("Respuesta incorrecta, resultado: esperado %b, resultado obtenido %b", ~(data_a | data_b), r_data);
        end
    endtask
    
    initial
    begin
        clk   = `LOW;
        reset = `LOW;
        rx    = `HIGH;
        
        #10 @(posedge clk) reset = `HIGH;
        #10 @(posedge clk) reset = `LOW;
        #10;
               
        repeat (`REPEAT_TIMES)
        begin
            generate_randoms();
            
            w_data = data_a;
            send();
            
            #20;

            w_data = data_b;
            send();
            
            #20;
            
           choise_op = $random % 8;
            
            case(choise_op)
                0: ADD();
                1: SUB();
                2: AND();
                3: OR();
                4: XOR();
                5: SRA();
                6: SRL();
                7: NOR();
            endcase
        end
        
        #20 $finish;
    end
    
    top_level 
    #(
        .DATA_BITS(DATA_BITS),
        .OP_CODE_BITS(OP_CODE_BITS),
        .SB_TICKS(SB_TICKS),
        .DVSR_BIT(DVSR_BIT),
        .DVSR (DVSR),
        .FIFO_SIZE (FIFO_SIZE)
    )
    top_level_inst
    (
        .clk(clk),
        .reset(reset),
        .rx(rx),
        .tx_full(tx_full),
        .rx_empty(rx_empty),
        .tx(tx)
    );
    
endmodule
