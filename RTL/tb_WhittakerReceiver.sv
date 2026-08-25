// Copyright (C) 2026 Jonathan f(n) Reed
// License: GNU Affero General Public License (AGPL-3.0)

module tb_WhittakerReceiver;
import WhittakerTypes::*;

    logic clk;
    logic rst_n;

    fixed_t f_z_minus_dx, f_z_center_dx, f_z_plus_dx;
    fixed_t f_z_minus_dz, f_z_center_dz, f_z_plus_dz;
    fixed_t asymmetry_alpha;

    fixed_t evaluated_dx_out;
    logic   signal_detected;

    WhittakerReceiver uut (
        .clk(clk),
        .rst_n(rst_n),
        .field_z_minus_dx(f_z_minus_dx),
        .field_z_center_dx(f_z_center_dx),
        .field_z_plus_dx(f_z_plus_dx),
        .field_z_minus_dz(f_z_minus_dz),
        .field_z_center_dz(f_z_center_dz),
        .field_z_plus_dz(f_z_plus_dz),
        .asymmetry_alpha(asymmetry_alpha),
        .evaluated_dx_out(evaluated_dx_out),
        .signal_detected(signal_detected)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst_n = 0;
        f_z_minus_dx = 0; f_z_center_dx = 0; f_z_plus_dx = 0;
        f_z_minus_dz = 0; f_z_center_dz = 0; f_z_plus_dz = 0;
        asymmetry_alpha = 0;

        #12;
        rst_n = 1;
        $display("--- Starting Whittaker Hardware Verification ---");

        // Scenario 1: Symmetric Boundary (Zero Invariant Intact)
        f_z_center_dx   = 32'sd0; 
        f_z_minus_dz    = 32'sd100;  
        f_z_center_dz   = 32'sd0;
        f_z_plus_dz     = -32'sd100;
        asymmetry_alpha = 32'sd0;    
        
        @(posedge clk); 
        @(posedge clk); 
        #1; 
        $display("Symmetric Mode | Alpha=%0d | Output=%0d | Detected=%b", 
                 asymmetry_alpha, evaluated_dx_out, signal_detected);
        assert(signal_detected == 0) else $error("Assertion Failed!");

        // Scenario 2: Asymmetric Boundary (Symmetry Broken, Signal Triggered)
        f_z_center_dx   = 32'sd0;   
        f_z_minus_dz    = 32'sd500;  
        f_z_center_dz   = 32'sd100;
        f_z_plus_dz     = 32'sd500;  
        asymmetry_alpha = 32'sd1;    

        @(posedge clk); 
        @(posedge clk); 
        #1; 
        $display("Asymmetric Mode | Alpha=%0d | Output=%0d | Detected=%b", 
                 asymmetry_alpha, evaluated_dx_out, signal_detected);
        assert(signal_detected == 1) else $error("Assertion Failed!");

        $display("--- Testbench Passed Successfully ---");
        $finish;
    end

endmodule
