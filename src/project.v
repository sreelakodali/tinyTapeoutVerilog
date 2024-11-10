
/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_loadMultiplySK (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  // All output pins must be assigned. If not used, assign to 0.
  assign uo_out  = ui_in + uio_in;  // Example: ou_out is the sum of ui_in and uio_in
  assign uio_out = 0;
  assign uio_oe  = 0;

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, clk, rst_n, 1'b0};

endmodule



// /*
//  * Copyright (c) 2024 Your Name
//  * SPDX-License-Identifier: Apache-2.0
//  Sreela Kodali, Tiny TapeOut

//  Loading in 8-bit numbers and Multiply Test
//  */

// `default_nettype none

// module tt_um_loadMultiplySK  (
//     input  wire [7:0] ui_in,    // Dedicated inputs
//     output wire [7:0] uo_out,   // Dedicated outputs
//     input  wire [7:0] uio_in,   // IOs: Input path
//     output wire [7:0] uio_out,  // IOs: Output path
//     output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
//     input  wire       ena,      // always 1 when the design is powered, so you can ignore it
//     input  wire       clk,      // clock
//     input  wire       rst_n     // reset_n - low to reset
// );

// // ui_in[3] - RX
// // uo_out[4] - TX

// // ui_in[7] - RX
// // uo_out[0] - TX

// // wire unsigned tx_w;
// // wire unsigned rx_w;

// // assign rx_w = ui_in[3];
// // assign tx_w = uo_out[4];

// reg unsigned [7:0] IN_r;
// reg unsigned [7:0] WEIGHT_r;

// wire unsigned load_w; // 1 is load, 0 is compute
// wire unsigned loadLSBorMSB_w; // 1 is LSB, 0 is MSB
// wire unsigned inputType_w; // 1 is input, 0 is weight


// wire unsigned [7:0] mult_w;

// assign inputType_w = ui_in[5];
// assign loadLSBorMSB_w = ui_in[6];
// assign load_w = ui_in[7];

// always @ (posedge clk) begin
//     if (rst_n) begin

//       if (load_w) begin

//         if (inputType_w) begin // loading an input
          
//           if (loadLSBorMSB_w) begin
//             IN_r[3:0] <= ui_in[3:0];
//           end else begin
//             IN_r[7:4] <= ui_in[3:0];
//           end

//         end else begin // loading a weight

//           if (loadLSBorMSB_w) begin
//             WEIGHT_r[3:0] <= ui_in[3:0];
//           end else begin
//             WEIGHT_r[7:4] <= ui_in[3:0];
//           end
//         end

//       end

//     end else begin
//         IN_r <= 0;
//         WEIGHT_r <= 0;
//     end
// end

// assign mult_w = IN_r*WEIGHT_r;

// assign uo_out = (load_w) ? ui_in : mult_w;
// assign uio_out = 0;
// assign uio_oe  = 0;


//   // goal: multiply dedicated inputs (ui_in) with uio_in, output will go in (uo_out)

//   // assign uo_out = ui_in * uio_in;

//   // // All output pins must be assigned. If not used, assign to 0.
//   // assign uo_out  = ui_in + uio_in;  // Example: ou_out is the sum of ui_in and uio_in
//   // assign uio_out = 0;
//   // assign uio_oe  = 0;

//   // List all unused inputs to prevent warnings
//   wire _unused = &{ena, clk, rst_n, 1'b0};

// endmodule
