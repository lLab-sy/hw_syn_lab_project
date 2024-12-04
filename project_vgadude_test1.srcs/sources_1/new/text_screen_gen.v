`timescale 1ns / 1ps

// Reference book: "FPGA Prototyping by Verilog Examples"
//                    "Xilinx Spartan-3 Version"
// Authored by: Pong P. Chu
// Published by: Wiley, 2008

// Adapted for use on Basys 3 FPGA with Xilinx Artix-7
// by: David J. Marion aka FPGA Dude

module text_screen_gen(
    input clk, reset,
    input video_on,
    input set,
    input up,
    input down,
    input left,
    input right,
    input [7:0] sw,
    input [9:0] x, y,
    output reg [11:0] rgb,
    input [7:0] data_fk,
    input en
    );
    
    // signal declaration
    // ascii ROM
    wire [11:0] rom_addr;
    wire [7:0] char_addr;
    wire [3:0] row_addr;
    wire [2:0] bit_addr;
    wire [7:0] font_word;
    wire ascii_bit;
    // tile RAM
    wire we;                    // write enable
    wire [11:0] addr_r, addr_w;
    wire [7:0] din, dout;
    // 80-by-30 tile map
    parameter MAX_X = 40;   // 640 pixels / 8 data bits = 80
    parameter MAX_Y = 20;   // 480 pixels / 16 data rows = 30
    // cursor
    reg [6:0] cur_x_reg;
    wire [6:0] cur_x_next;
    reg [4:0] cur_y_reg;
    wire [4:0] cur_y_next;
    wire move_xl_tick, move_yu_tick, move_xr_tick, move_yd_tick, cursor_on;
    // delayed pixel count
    reg [9:0] pix_x1_reg, pix_y1_reg;
    reg [9:0] pix_x2_reg, pix_y2_reg;
    // object output signals
    wire [11:0] text_rgb, text_rev_rgb;
    wire en, move_xr;
    
    // body
    // instantiate debounce for four buttons
    //debounce_chu db_left(.clk(clk), .reset(reset), .sw(left), .db_level(), .db_tick(move_xl_tick));
    //debounce_chu db_up(.clk(clk), .reset(reset), .sw(up), .db_level(), .db_tick(move_yu_tick));
    //debounce_chu db_down(.clk(clk), .reset(reset), .sw(down), .db_level(), .db_tick(move_yd_tick));
    //debounce_chu db_right(.clk(clk), .reset(reset), .sw(right), .db_level(), .db_tick(move_xr_tick));
    // debounce_chu db_keyboard(.clk(clk), .reset(reset), .sw(en), .db_level(), .db_tick(move_xr));
    
    reg [1:0] stage = 0;
    reg enable = 0;
    always @(posedge clk) begin
        if (stage == 0) begin
            if(en) begin
                enable = 1;
                stage = 1; 
            end
        end
        else if (stage == 1) begin
            if(en) begin
                stage = 2;
            end
            else begin
                stage = 0;
            end
                enable = 0;
        end
        else begin
            if(!en) begin
                stage = 0;
            end
        end
    end
    
    // instantiate the ascii / font rom
    ascii_rom a_rom(.clk(clk), .addr(rom_addr), .data(font_word));
    
    dual_port_ram dp_ram(.clk(clk), .we(enable), .addr_a(addr_w), .addr_b(addr_r),
                         .din_a(data_fk), .dout_a(), .dout_b(dout), .reset(right));
    
    // instantiate dual-port video RAM (2^12-by-7)
//    dual_port_ram dp_ram(.clk(clk), .we(we), .addr_a(addr_w), .addr_b(addr_r),
//                         .din_a(din), .dout_a(), .dout_b(dout));
    
    // registers
    always @(posedge clk or posedge reset)
        if(reset || right) begin
            cur_x_reg <= 10;
            cur_y_reg <= 10;
            pix_x1_reg <= 0;
            pix_x2_reg <= 0;
            pix_y1_reg <= 0;
            pix_y2_reg <= 0;
        end    
        else begin
            cur_x_reg <= cur_x_next;
            cur_y_reg <= cur_y_next;
            pix_x1_reg <= x;
            pix_x2_reg <= pix_x1_reg;
            pix_y1_reg <= y;
            pix_y2_reg <= pix_y1_reg;
        end
    
    // tile RAM write
    assign addr_w = {cur_y_reg, cur_x_reg};
    assign we = set;
    assign din = sw;
    // tile RAM read
    // use nondelayed coordinates to form tile RAM address
    assign addr_r = {y[8:4], x[9:3]};
    assign char_addr = dout;
    // font ROM
    assign row_addr = y[3:0];
    assign rom_addr = {char_addr, row_addr};
    // use delayed coordinate to select a bit
    assign bit_addr = pix_x2_reg[2:0];
    assign ascii_bit = font_word[~bit_addr];
    
    // new cursor position
    
    assign cur_x_next = (enable && cur_x_reg == MAX_X - 1) ? 10 : (enable) ? cur_x_reg + 1 : cur_x_reg;
    
    assign cur_y_next = (cur_y_reg == MAX_Y -1) ? 10 : ((enable && cur_x_reg == MAX_X - 1)) ? cur_y_reg + 1 : cur_y_reg;
    
//    assign cur_x_next = ((move_xr_tick || enable) && (cur_x_reg == MAX_X - 1)) || ((move_xl_tick || enable) && (cur_x_reg == 0)) ? 10 :    
//                        (move_xr_tick || enable) ? cur_x_reg + 1 :    // move right
//                        (move_xl_tick) ? cur_x_reg - 1 :    // move left
//                        cur_x_reg;                          // no move
                                           
//    assign cur_y_next = (move_yu_tick && (cur_y_reg == 0)) || ( (move_yd_tick || enable) && (cur_y_reg == MAX_Y - 1) && ((move_xr_tick || enable) && (cur_x_reg == MAX_X - 1))) ? 10 :    
//                        (move_yu_tick) ? cur_y_reg - 1 :    // move up                        
//                        (move_yd_tick || (((move_xr_tick || enable) && (cur_x_reg == MAX_X - 1)))) ? cur_y_reg + 1 :    // move down
//                        cur_y_reg;                          // no move           
    
    // object signals
    // green over black and reversed video for cursor
    assign text_rgb = (ascii_bit) ? 12'h0F0 : 12'h000;
    assign text_rev_rgb = (ascii_bit) ? 12'h000 : 12'h0F0;
    // use delayed coordinates for comparison
    assign cursor_on = (pix_y2_reg[8:4] == cur_y_reg) &&
                       (pix_x2_reg[9:3] == cur_x_reg);
    assign after_cursor = (pix_y2_reg[8:4] > cur_y_reg) ||
                       (pix_y2_reg[8:4] == cur_y_reg && pix_x2_reg[9:3] > cur_x_reg);
    // rgb multiplexing circuit
    always @*
        if(~video_on || after_cursor)
            rgb = 12'h000;     // blank
        else
            if(cursor_on)
                rgb = text_rev_rgb;
            else
                rgb = text_rgb;
      
endmodule