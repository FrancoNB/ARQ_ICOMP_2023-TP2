`timescale 1ns / 1ps

`include "uart_rx.vh"
`include "common.vh"

`define STATE_WAIT_START  3'b00
`define STATE_SAMPLE_DATA 3'b01
`define STATE_WAIT_STOP   3'b10
`define STATE_READY       3'b11
    
`define STATES_NUMBERS 4
`define COUNTER_SIZE   $clog2(DATA_BITS > STOP_BITS ? DATA_BITS : STOP_BITS)

`define CLEAR(len) { len {`LOW}}

module uart_rx
    #(
        parameter DATA_BITS  = `DATA_BITS,
        parameter STOP_BITS  = `STOP_BITS
    )
    (
        input  wire                     s_tick,     
        input  wire                     rx,
        output wire                     rx_done_tick,
        output wire [DATA_BITS - 1 : 0] dout
    );
    
    reg [DATA_BITS - 1 : 0]           temp_data;
    reg [DATA_BITS - 1 : 0]           shift_reg;
    reg [$clog2(`STATES_NUMBERS) : 0] state;
    reg [`COUNTER_SIZE - 1 : 0]       counter;
    reg                               done_bit;
    
    always @(posedge s_tick) 
    begin
        case(state)
            `STATE_WAIT_START: 
            begin
                if (rx == `LOW) 
                begin
                    temp_data  <= `CLEAR(DATA_BITS);
                    shift_reg  <= `CLEAR(DATA_BITS);
                    done_bit   <= `LOW;
                    counter    <= `CLEAR(`COUNTER_SIZE);
                    state      <= `STATE_SAMPLE_DATA;
                end
            end
            
            `STATE_SAMPLE_DATA: 
            begin
                shift_reg <= {shift_reg[DATA_BITS - 2 : 0], rx};
                
                if (counter == DATA_BITS - 1)
                    state <= `STATE_WAIT_STOP;
                  
                counter <= counter + 1;
            end
            
            `STATE_WAIT_STOP: 
            begin
                if (rx == `HIGH)
                begin
                    temp_data <= shift_reg[DATA_BITS - 1 : 0];
                    done_bit  <= `HIGH;
                    state     <= `STATE_READY;
                    counter   <= `CLEAR(`COUNTER_SIZE) + 1'b1;
                end
                else
                    state <= `STATE_WAIT_START;
            end
            
            `STATE_READY: 
            begin
                if (rx == `HIGH)
                begin
                    if (counter == STOP_BITS - 1)
                        state <= `STATE_WAIT_START;
                        
                    counter <= counter + 1;
                end
            end
            
            default: 
                state <= `STATE_WAIT_START;
        endcase
    end
    
    assign dout         = temp_data;
    assign rx_done_tick = done_bit;
    
endmodule
