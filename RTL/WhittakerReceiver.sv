// Copyright (C) 2026 Jonathan f(n) Reed
// License: GNU Affero General Public License (AGPL-3.0)

// 1. Package definition
package WhittakerTypes;
    typedef logic signed [31:0] fixed_t;
endpackage

// 2. Receiver Module
module WhittakerReceiver 
import WhittakerTypes::*;
(
    input  logic   clk,
    input  logic   rst_n,
    input  fixed_t field_z_minus_dx,  
    input  fixed_t field_z_center_dx, 
    input  fixed_t field_z_plus_dx,   
    input  fixed_t field_z_minus_dz,  
    input  fixed_t field_z_center_dz, 
    input  fixed_t field_z_plus_dz,   
    input  fixed_t asymmetry_alpha,   
    output fixed_t evaluated_dx_out,  
    output logic   signal_detected    
);

    fixed_t d2F_dz2;
    fixed_t computed_dx;

    // Registered pipeline for calculations
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            d2F_dz2             <= 32'sd0;
            computed_dx         <= 32'sd0;
            evaluated_dx_out    <= 32'sd0;
        end else begin
            // Discrete second spatial derivative calculation
            d2F_dz2 <= field_z_plus_dz - (32'sd2 * field_z_center_dz) + field_z_minus_dz;
            computed_dx <= field_z_center_dx;
            
            // Asymmetric boundary breaking operator evaluation
            evaluated_dx_out <= computed_dx + (asymmetry_alpha * d2F_dz2);
        end
    end

    // Combinational detector: instantly flags when the invariant is broken
    always_comb begin
        if (evaluated_dx_out != 32'sd0) begin
            signal_detected = 1'b1;
        end else begin
            signal_detected = 1'b0;
        end
    end

endmodule
