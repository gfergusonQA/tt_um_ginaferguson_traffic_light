/*
 * Copyright (c) 2026 Gina Ferguson
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_ginaferguson_trafficlight(
    input wire clk,
    input wire reset,
    output reg [1:0] north_light,
    output reg [1:0] south_light,
    output reg [1:0] east_light,
    output reg [1:0] west_light
);

    typedef enum logic [2:0] {RED, YELLOW, GREEN} t_state;
    
    always @(posedge clk) begin
        if (reset) begin
            north_light <= 2'b10;
            south_light <= 2'b10;
            east_light <= 2'b10;
            west_light <= 2'b10;
        end else begin
            // Moore output logic
            case(north_light)
                2'b10: begin
                    north_light <= 2'b01;
                    south_light <= 2'b10;
                    east_light <= 2'b10;
                    west_light <= 2'b10;
                end
                2'b01: begin
                    north_light <= 2'b10;
                    south_light <= 2'b01;
                    east_light <= 2'b10;
                    west_light <= 2'b10;
                end
                default: begin
                    north_light <= 2'b10;
                    south_light <= 2'b10;
                    east_light <= 2'b10;
                    west_light <= 2'b10;
                end
            endcase
        end
    end

endmodule


module traffic_light_controller(
    input wire clk,
    input wire reset,
    output reg [1:0] north_light,
    output reg [1:0] south_light,
    output reg [1:0] east_light,
    output reg [1:0] west_light
);

    typedef enum logic [2:0] {RED, YELLOW, GREEN} t_state;
    
    always @(posedge clk) begin
        if (reset) begin
            north_light <= 2'b10;
            south_light <= 2'b10;
            east_light <= 2'b10;
            west_light <= 2'b10;
        end else begin
            // Moore output logic
            case(north_light)
                2'b10: begin
                    north_light <= 2'b01;
                    south_light <= 2'b10;
                    east_light <= 2'b10;
                    west_light <= 2'b10;
                end
                2'b01: begin
                    north_light <= 2'b10;
                    south_light <= 2'b01;
                    east_light <= 2'b10;
                    west_light <= 2'b10;
                end
                default: begin
                    north_light <= 2'b10;
                    south_light <= 2'b10;
                    east_light <= 2'b10;
                    west_light <= 2'b10;
                end
            endcase
        end
    end

endmodule
