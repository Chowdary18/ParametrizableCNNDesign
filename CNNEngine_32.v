module full_subber(
  input  [7:0] io_in_a,
  input  [7:0] io_in_b,
  output [7:0] io_out_s,
  output       io_out_c
);
  wire [8:0] _result_T = io_in_a - io_in_b; // @[Arithmetic.scala 70:23]
  wire [9:0] _result_T_2 = _result_T - 9'h0; // @[Arithmetic.scala 70:34]
  wire [8:0] result = _result_T_2[8:0]; // @[Arithmetic.scala 69:22 70:12]
  assign io_out_s = result[7:0]; // @[Arithmetic.scala 71:23]
  assign io_out_c = result[8]; // @[Arithmetic.scala 72:23]
endmodule
module twoscomplement(
  input  [7:0] io_in,
  output [7:0] io_out
);
  wire [7:0] x = ~io_in; // @[Arithmetic.scala 26:10]
  assign io_out = x + 8'h1; // @[Arithmetic.scala 27:17]
endmodule
module full_adder(
  input  [23:0] io_in_a,
  input  [23:0] io_in_b,
  output [23:0] io_out_s,
  output        io_out_c
);
  wire [24:0] _result_T = io_in_a + io_in_b; // @[Arithmetic.scala 56:23]
  wire [25:0] _result_T_1 = {{1'd0}, _result_T}; // @[Arithmetic.scala 56:34]
  wire [24:0] result = _result_T_1[24:0]; // @[Arithmetic.scala 55:22 56:12]
  assign io_out_s = result[23:0]; // @[Arithmetic.scala 57:23]
  assign io_out_c = result[24]; // @[Arithmetic.scala 58:23]
endmodule
module twoscomplement_1(
  input  [23:0] io_in,
  output [23:0] io_out
);
  wire [23:0] x = ~io_in; // @[Arithmetic.scala 26:10]
  assign io_out = x + 24'h1; // @[Arithmetic.scala 27:17]
endmodule
module shifter(
  input  [23:0] io_in_a,
  input  [4:0]  io_in_b,
  output [23:0] io_out_s
);
  wire [23:0] _result_T = io_in_a >> io_in_b; // @[Arithmetic.scala 40:25]
  wire [54:0] _GEN_0 = {{31'd0}, _result_T}; // @[Arithmetic.scala 39:26 40:14 42:14]
  assign io_out_s = _GEN_0[23:0]; // @[Arithmetic.scala 37:22]
endmodule
module leadingOneDetector(
  input  [23:0] io_in,
  output [4:0]  io_out
);
  wire [1:0] _hotValue_T = io_in[1] ? 2'h2 : 2'h1; // @[Mux.scala 47:70]
  wire [1:0] _hotValue_T_1 = io_in[2] ? 2'h3 : _hotValue_T; // @[Mux.scala 47:70]
  wire [2:0] _hotValue_T_2 = io_in[3] ? 3'h4 : {{1'd0}, _hotValue_T_1}; // @[Mux.scala 47:70]
  wire [2:0] _hotValue_T_3 = io_in[4] ? 3'h5 : _hotValue_T_2; // @[Mux.scala 47:70]
  wire [2:0] _hotValue_T_4 = io_in[5] ? 3'h6 : _hotValue_T_3; // @[Mux.scala 47:70]
  wire [2:0] _hotValue_T_5 = io_in[6] ? 3'h7 : _hotValue_T_4; // @[Mux.scala 47:70]
  wire [3:0] _hotValue_T_6 = io_in[7] ? 4'h8 : {{1'd0}, _hotValue_T_5}; // @[Mux.scala 47:70]
  wire [3:0] _hotValue_T_7 = io_in[8] ? 4'h9 : _hotValue_T_6; // @[Mux.scala 47:70]
  wire [3:0] _hotValue_T_8 = io_in[9] ? 4'ha : _hotValue_T_7; // @[Mux.scala 47:70]
  wire [3:0] _hotValue_T_9 = io_in[10] ? 4'hb : _hotValue_T_8; // @[Mux.scala 47:70]
  wire [3:0] _hotValue_T_10 = io_in[11] ? 4'hc : _hotValue_T_9; // @[Mux.scala 47:70]
  wire [3:0] _hotValue_T_11 = io_in[12] ? 4'hd : _hotValue_T_10; // @[Mux.scala 47:70]
  wire [3:0] _hotValue_T_12 = io_in[13] ? 4'he : _hotValue_T_11; // @[Mux.scala 47:70]
  wire [3:0] _hotValue_T_13 = io_in[14] ? 4'hf : _hotValue_T_12; // @[Mux.scala 47:70]
  wire [4:0] _hotValue_T_14 = io_in[15] ? 5'h10 : {{1'd0}, _hotValue_T_13}; // @[Mux.scala 47:70]
  wire [4:0] _hotValue_T_15 = io_in[16] ? 5'h11 : _hotValue_T_14; // @[Mux.scala 47:70]
  wire [4:0] _hotValue_T_16 = io_in[17] ? 5'h12 : _hotValue_T_15; // @[Mux.scala 47:70]
  wire [4:0] _hotValue_T_17 = io_in[18] ? 5'h13 : _hotValue_T_16; // @[Mux.scala 47:70]
  wire [4:0] _hotValue_T_18 = io_in[19] ? 5'h14 : _hotValue_T_17; // @[Mux.scala 47:70]
  wire [4:0] _hotValue_T_19 = io_in[20] ? 5'h15 : _hotValue_T_18; // @[Mux.scala 47:70]
  wire [4:0] _hotValue_T_20 = io_in[21] ? 5'h16 : _hotValue_T_19; // @[Mux.scala 47:70]
  wire [4:0] _hotValue_T_21 = io_in[22] ? 5'h17 : _hotValue_T_20; // @[Mux.scala 47:70]
  assign io_out = io_in[23] ? 5'h18 : _hotValue_T_21; // @[Mux.scala 47:70]
endmodule
module FP_adder(
  input         clock,
  input         reset,
  input  [31:0] io_in_a,
  input  [31:0] io_in_b,
  output [31:0] io_out_s
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] subber_io_in_a; // @[FPArithmetic.scala 83:24]
  wire [7:0] subber_io_in_b; // @[FPArithmetic.scala 83:24]
  wire [7:0] subber_io_out_s; // @[FPArithmetic.scala 83:24]
  wire  subber_io_out_c; // @[FPArithmetic.scala 83:24]
  wire [7:0] complement_io_in; // @[FPArithmetic.scala 89:28]
  wire [7:0] complement_io_out; // @[FPArithmetic.scala 89:28]
  wire [23:0] adder_io_in_a; // @[FPArithmetic.scala 93:23]
  wire [23:0] adder_io_in_b; // @[FPArithmetic.scala 93:23]
  wire [23:0] adder_io_out_s; // @[FPArithmetic.scala 93:23]
  wire  adder_io_out_c; // @[FPArithmetic.scala 93:23]
  wire [23:0] complementN_0_io_in; // @[FPArithmetic.scala 99:31]
  wire [23:0] complementN_0_io_out; // @[FPArithmetic.scala 99:31]
  wire [23:0] complementN_1_io_in; // @[FPArithmetic.scala 101:31]
  wire [23:0] complementN_1_io_out; // @[FPArithmetic.scala 101:31]
  wire [23:0] shifter_io_in_a; // @[FPArithmetic.scala 105:25]
  wire [4:0] shifter_io_in_b; // @[FPArithmetic.scala 105:25]
  wire [23:0] shifter_io_out_s; // @[FPArithmetic.scala 105:25]
  wire [23:0] complementN_2_io_in; // @[FPArithmetic.scala 150:31]
  wire [23:0] complementN_2_io_out; // @[FPArithmetic.scala 150:31]
  wire [23:0] leadingOneFinder_io_in; // @[FPArithmetic.scala 170:34]
  wire [4:0] leadingOneFinder_io_out; // @[FPArithmetic.scala 170:34]
  wire [7:0] subber2_io_in_a; // @[FPArithmetic.scala 172:25]
  wire [7:0] subber2_io_in_b; // @[FPArithmetic.scala 172:25]
  wire [7:0] subber2_io_out_s; // @[FPArithmetic.scala 172:25]
  wire  subber2_io_out_c; // @[FPArithmetic.scala 172:25]
  wire  sign_0 = io_in_a[31]; // @[FPArithmetic.scala 45:23]
  wire  sign_1 = io_in_b[31]; // @[FPArithmetic.scala 46:23]
  wire [8:0] _T_2 = 9'h100 - 9'h2; // @[FPArithmetic.scala 50:62]
  wire [8:0] _GEN_31 = {{1'd0}, io_in_a[30:23]}; // @[FPArithmetic.scala 50:34]
  wire [8:0] _GEN_0 = _GEN_31 > _T_2 ? _T_2 : {{1'd0}, io_in_a[30:23]}; // @[FPArithmetic.scala 50:68 51:14 53:14]
  wire [8:0] _GEN_32 = {{1'd0}, io_in_b[30:23]}; // @[FPArithmetic.scala 55:34]
  wire [8:0] _GEN_1 = _GEN_32 > _T_2 ? _T_2 : {{1'd0}, io_in_b[30:23]}; // @[FPArithmetic.scala 55:68 56:14 58:14]
  wire [22:0] frac_0 = io_in_a[22:0]; // @[FPArithmetic.scala 63:23]
  wire [22:0] frac_1 = io_in_b[22:0]; // @[FPArithmetic.scala 64:23]
  wire [23:0] whole_frac_0 = {1'h1,frac_0}; // @[FPArithmetic.scala 68:26]
  wire [23:0] whole_frac_1 = {1'h1,frac_1}; // @[FPArithmetic.scala 69:26]
  wire [7:0] exp_1 = _GEN_1[7:0]; // @[FPArithmetic.scala 49:19]
  wire [7:0] exp_0 = _GEN_0[7:0]; // @[FPArithmetic.scala 49:19]
  wire [7:0] out_exp = subber_io_out_c ? exp_1 : exp_0; // @[FPArithmetic.scala 111:34 112:15 122:15]
  wire [7:0] sub_exp = subber_io_out_c ? complement_io_out : subber_io_out_s; // @[FPArithmetic.scala 111:34 113:15 123:15]
  wire  out_s = subber_io_out_c ? sign_1 : sign_0; // @[FPArithmetic.scala 111:34 114:13 124:13]
  wire [22:0] out_frac = subber_io_out_c ? frac_1 : frac_0; // @[FPArithmetic.scala 111:34 115:16 125:16]
  wire [23:0] _GEN_8 = subber_io_out_c ? shifter_io_out_s : whole_frac_0; // @[FPArithmetic.scala 111:34 119:21 94:19]
  wire [23:0] _GEN_9 = subber_io_out_c ? whole_frac_1 : shifter_io_out_s; // @[FPArithmetic.scala 111:34 95:19 129:21]
  wire  _new_s_T = ~adder_io_out_c; // @[FPArithmetic.scala 145:15]
  wire  _D_T_1 = sign_0 ^ sign_1; // @[FPArithmetic.scala 158:39]
  wire  D = _new_s_T | sign_0 ^ sign_1; // @[FPArithmetic.scala 158:28]
  wire  E = _new_s_T & ~adder_io_out_s[23] | _new_s_T & ~_D_T_1 | adder_io_out_c & adder_io_out_s[23] & _D_T_1; // @[FPArithmetic.scala 161:99]
  wire  _GEN_25 = sub_exp >= 8'h17 ? out_s : ~adder_io_out_c & sign_0 | sign_0 & sign_1 | ~adder_io_out_c & sign_1; // @[FPArithmetic.scala 145:11 180:39 181:13]
  wire  new_s = io_in_a[30:0] == 31'h0 & io_in_b[30:0] == 31'h0 ? 1'h0 : _GEN_25; // @[FPArithmetic.scala 176:62 177:13]
  wire [23:0] adder_result = new_s & sign_0 != sign_1 ? complementN_2_io_out : adder_io_out_s; // @[FPArithmetic.scala 164:18 165:47 166:20]
  wire [4:0] _subber2_io_in_b_T_1 = 5'h18 - leadingOneFinder_io_out; // @[FPArithmetic.scala 174:42]
  wire [8:0] _GEN_33 = {{1'd0}, out_exp}; // @[FPArithmetic.scala 188:20]
  wire [23:0] _new_out_frac_T_2 = 24'h800000 - 24'h1; // @[FPArithmetic.scala 190:51]
  wire [7:0] _new_out_exp_T_3 = out_exp + 8'h1; // @[FPArithmetic.scala 192:32]
  wire [8:0] _GEN_13 = _GEN_33 == _T_2 ? _T_2 : {{1'd0}, _new_out_exp_T_3}; // @[FPArithmetic.scala 188:56 189:21 192:21]
  wire [23:0] _GEN_14 = _GEN_33 == _T_2 ? _new_out_frac_T_2 : {{1'd0}, adder_result[23:1]}; // @[FPArithmetic.scala 188:56 190:22 193:22]
  wire [53:0] _GEN_2 = {{31'd0}, adder_result[22:0]}; // @[FPArithmetic.scala 204:57]
  wire [53:0] _new_out_frac_T_7 = _GEN_2 << _subber2_io_in_b_T_1; // @[FPArithmetic.scala 204:57]
  wire [7:0] _GEN_15 = subber2_io_out_c ? 8'h1 : subber2_io_out_s; // @[FPArithmetic.scala 199:39 200:23 203:23]
  wire [53:0] _GEN_16 = subber2_io_out_c ? 54'h400000 : _new_out_frac_T_7; // @[FPArithmetic.scala 199:39 201:24 204:24]
  wire [7:0] _GEN_17 = leadingOneFinder_io_out == 5'h1 & adder_result == 24'h0 & (_D_T_1 & io_in_a[30:0] == io_in_b[30:0
    ]) ? 8'h0 : _GEN_15; // @[FPArithmetic.scala 196:141 197:21]
  wire [53:0] _GEN_18 = leadingOneFinder_io_out == 5'h1 & adder_result == 24'h0 & (_D_T_1 & io_in_a[30:0] == io_in_b[30:
    0]) ? 54'h0 : _GEN_16; // @[FPArithmetic.scala 196:141 146:18]
  wire [7:0] _GEN_19 = D ? _GEN_17 : 8'h0; // @[FPArithmetic.scala 147:17 195:26]
  wire [53:0] _GEN_20 = D ? _GEN_18 : 54'h0; // @[FPArithmetic.scala 146:18 195:26]
  wire [8:0] _GEN_21 = ~D ? _GEN_13 : {{1'd0}, _GEN_19}; // @[FPArithmetic.scala 187:26]
  wire [53:0] _GEN_22 = ~D ? {{30'd0}, _GEN_14} : _GEN_20; // @[FPArithmetic.scala 187:26]
  wire [8:0] _GEN_23 = E ? {{1'd0}, out_exp} : _GEN_21; // @[FPArithmetic.scala 184:26 185:19]
  wire [53:0] _GEN_24 = E ? {{31'd0}, adder_result[22:0]} : _GEN_22; // @[FPArithmetic.scala 184:26 186:20]
  wire [53:0] _GEN_26 = sub_exp >= 8'h17 ? {{31'd0}, out_frac} : _GEN_24; // @[FPArithmetic.scala 180:39 182:20]
  wire [8:0] _GEN_27 = sub_exp >= 8'h17 ? {{1'd0}, out_exp} : _GEN_23; // @[FPArithmetic.scala 180:39 183:19]
  wire [8:0] _GEN_29 = io_in_a[30:0] == 31'h0 & io_in_b[30:0] == 31'h0 ? 9'h0 : _GEN_27; // @[FPArithmetic.scala 176:62 178:19]
  wire [53:0] _GEN_30 = io_in_a[30:0] == 31'h0 & io_in_b[30:0] == 31'h0 ? 54'h0 : _GEN_26; // @[FPArithmetic.scala 176:62 179:20]
  reg [31:0] reg_out_s; // @[FPArithmetic.scala 208:28]
  wire [7:0] new_out_exp = _GEN_29[7:0]; // @[FPArithmetic.scala 144:27]
  wire [22:0] new_out_frac = _GEN_30[22:0]; // @[FPArithmetic.scala 143:28]
  wire [31:0] _reg_out_s_T_1 = {new_s,new_out_exp,new_out_frac}; // @[FPArithmetic.scala 210:39]
  full_subber subber ( // @[FPArithmetic.scala 83:24]
    .io_in_a(subber_io_in_a),
    .io_in_b(subber_io_in_b),
    .io_out_s(subber_io_out_s),
    .io_out_c(subber_io_out_c)
  );
  twoscomplement complement ( // @[FPArithmetic.scala 89:28]
    .io_in(complement_io_in),
    .io_out(complement_io_out)
  );
  full_adder adder ( // @[FPArithmetic.scala 93:23]
    .io_in_a(adder_io_in_a),
    .io_in_b(adder_io_in_b),
    .io_out_s(adder_io_out_s),
    .io_out_c(adder_io_out_c)
  );
  twoscomplement_1 complementN_0 ( // @[FPArithmetic.scala 99:31]
    .io_in(complementN_0_io_in),
    .io_out(complementN_0_io_out)
  );
  twoscomplement_1 complementN_1 ( // @[FPArithmetic.scala 101:31]
    .io_in(complementN_1_io_in),
    .io_out(complementN_1_io_out)
  );
  shifter shifter ( // @[FPArithmetic.scala 105:25]
    .io_in_a(shifter_io_in_a),
    .io_in_b(shifter_io_in_b),
    .io_out_s(shifter_io_out_s)
  );
  twoscomplement_1 complementN_2 ( // @[FPArithmetic.scala 150:31]
    .io_in(complementN_2_io_in),
    .io_out(complementN_2_io_out)
  );
  leadingOneDetector leadingOneFinder ( // @[FPArithmetic.scala 170:34]
    .io_in(leadingOneFinder_io_in),
    .io_out(leadingOneFinder_io_out)
  );
  full_subber subber2 ( // @[FPArithmetic.scala 172:25]
    .io_in_a(subber2_io_in_a),
    .io_in_b(subber2_io_in_b),
    .io_out_s(subber2_io_out_s),
    .io_out_c(subber2_io_out_c)
  );
  assign io_out_s = reg_out_s; // @[FPArithmetic.scala 212:14]
  assign subber_io_in_a = _GEN_0[7:0]; // @[FPArithmetic.scala 49:19]
  assign subber_io_in_b = _GEN_1[7:0]; // @[FPArithmetic.scala 49:19]
  assign complement_io_in = subber_io_out_s; // @[FPArithmetic.scala 90:22]
  assign adder_io_in_a = sign_0 & ~sign_1 ? complementN_0_io_out : _GEN_8; // @[FPArithmetic.scala 134:45 135:21]
  assign adder_io_in_b = sign_1 & ~sign_0 ? complementN_1_io_out : _GEN_9; // @[FPArithmetic.scala 138:45 139:21]
  assign complementN_0_io_in = subber_io_out_c ? shifter_io_out_s : whole_frac_0; // @[FPArithmetic.scala 111:34 119:21 94:19]
  assign complementN_1_io_in = subber_io_out_c ? whole_frac_1 : shifter_io_out_s; // @[FPArithmetic.scala 111:34 95:19 129:21]
  assign shifter_io_in_a = subber_io_out_c ? whole_frac_0 : whole_frac_1; // @[FPArithmetic.scala 111:34 116:23 126:23]
  assign shifter_io_in_b = sub_exp[4:0];
  assign complementN_2_io_in = adder_io_out_s; // @[FPArithmetic.scala 151:25]
  assign leadingOneFinder_io_in = new_s & sign_0 != sign_1 ? complementN_2_io_out : adder_io_out_s; // @[FPArithmetic.scala 164:18 165:47 166:20]
  assign subber2_io_in_a = subber_io_out_c ? exp_1 : exp_0; // @[FPArithmetic.scala 111:34 112:15 122:15]
  assign subber2_io_in_b = {{3'd0}, _subber2_io_in_b_T_1}; // @[FPArithmetic.scala 174:21]
  always @(posedge clock) begin
    if (reset) begin // @[FPArithmetic.scala 208:28]
      reg_out_s <= 32'h0; // @[FPArithmetic.scala 208:28]
    end else begin
      reg_out_s <= _reg_out_s_T_1; // @[FPArithmetic.scala 210:15]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_out_s = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module multiplier(
  input  [23:0] io_in_a,
  input  [23:0] io_in_b,
  output [47:0] io_out_s
);
  assign io_out_s = io_in_a * io_in_b; // @[Arithmetic.scala 82:23]
endmodule
module full_adder_1(
  input  [7:0] io_in_a,
  input  [7:0] io_in_b,
  output [7:0] io_out_s
);
  wire [8:0] _result_T = io_in_a + io_in_b; // @[Arithmetic.scala 56:23]
  wire [9:0] _result_T_1 = {{1'd0}, _result_T}; // @[Arithmetic.scala 56:34]
  wire [8:0] result = _result_T_1[8:0]; // @[Arithmetic.scala 55:22 56:12]
  assign io_out_s = result[7:0]; // @[Arithmetic.scala 57:23]
endmodule
module FP_multiplier(
  input         clock,
  input         reset,
  input  [31:0] io_in_a,
  input  [31:0] io_in_b,
  output [31:0] io_out_s
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire [23:0] multiplier_io_in_a; // @[FPArithmetic.scala 293:28]
  wire [23:0] multiplier_io_in_b; // @[FPArithmetic.scala 293:28]
  wire [47:0] multiplier_io_out_s; // @[FPArithmetic.scala 293:28]
  wire [7:0] subber_io_in_a; // @[FPArithmetic.scala 298:24]
  wire [7:0] subber_io_in_b; // @[FPArithmetic.scala 298:24]
  wire [7:0] subber_io_out_s; // @[FPArithmetic.scala 298:24]
  wire  subber_io_out_c; // @[FPArithmetic.scala 298:24]
  wire [7:0] complementN_io_in; // @[FPArithmetic.scala 304:29]
  wire [7:0] complementN_io_out; // @[FPArithmetic.scala 304:29]
  wire [7:0] adderN_io_in_a; // @[FPArithmetic.scala 308:24]
  wire [7:0] adderN_io_in_b; // @[FPArithmetic.scala 308:24]
  wire [7:0] adderN_io_out_s; // @[FPArithmetic.scala 308:24]
  wire  s_0 = io_in_a[31]; // @[FPArithmetic.scala 258:20]
  wire  s_1 = io_in_b[31]; // @[FPArithmetic.scala 259:20]
  wire [8:0] _T_2 = 9'h100 - 9'h2; // @[FPArithmetic.scala 263:62]
  wire [8:0] _GEN_13 = {{1'd0}, io_in_a[30:23]}; // @[FPArithmetic.scala 263:34]
  wire [8:0] _GEN_0 = _GEN_13 > _T_2 ? _T_2 : {{1'd0}, io_in_a[30:23]}; // @[FPArithmetic.scala 263:68 264:14 266:14]
  wire [8:0] _GEN_14 = {{1'd0}, io_in_b[30:23]}; // @[FPArithmetic.scala 268:34]
  wire [8:0] _GEN_1 = _GEN_14 > _T_2 ? _T_2 : {{1'd0}, io_in_b[30:23]}; // @[FPArithmetic.scala 268:68 269:14 271:14]
  wire [22:0] exp_check_0 = {{15'd0}, io_in_a[30:23]}; // @[FPArithmetic.scala 274:25 275:18]
  wire [22:0] _cond_holder_T_1 = exp_check_0 + 23'h1; // @[FPArithmetic.scala 279:34]
  wire [22:0] exp_check_1 = {{15'd0}, io_in_b[30:23]}; // @[FPArithmetic.scala 274:25 276:18]
  wire [22:0] _cond_holder_T_3 = 23'h7f - exp_check_1; // @[FPArithmetic.scala 279:80]
  wire [22:0] _cond_holder_T_4 = ~_cond_holder_T_3; // @[FPArithmetic.scala 279:42]
  wire [22:0] _cond_holder_T_6 = _cond_holder_T_1 + _cond_holder_T_4; // @[FPArithmetic.scala 279:40]
  wire [22:0] frac_0 = io_in_a[22:0]; // @[FPArithmetic.scala 283:23]
  wire [22:0] frac_1 = io_in_b[22:0]; // @[FPArithmetic.scala 284:23]
  wire  new_s = s_0 ^ s_1; // @[FPArithmetic.scala 315:19]
  wire [7:0] _new_exp_T_1 = adderN_io_out_s + 8'h1; // @[FPArithmetic.scala 326:34]
  wire [22:0] _cond_holder_T_8 = exp_check_0 + 23'h2; // @[FPArithmetic.scala 328:36]
  wire [22:0] _cond_holder_T_13 = _cond_holder_T_8 + _cond_holder_T_4; // @[FPArithmetic.scala 328:42]
  wire [23:0] _new_mant_T_2 = {multiplier_io_out_s[46:24], 1'h0}; // @[FPArithmetic.scala 334:73]
  wire [7:0] _GEN_2 = multiplier_io_out_s[47] ? _new_exp_T_1 : adderN_io_out_s; // @[FPArithmetic.scala 325:60 326:15 331:15]
  wire [22:0] cond_holder = multiplier_io_out_s[47] ? _cond_holder_T_13 : _cond_holder_T_6; // @[FPArithmetic.scala 325:60 328:19 333:19]
  wire [23:0] _GEN_5 = multiplier_io_out_s[47] ? {{1'd0}, multiplier_io_out_s[46:24]} : _new_mant_T_2; // @[FPArithmetic.scala 325:60 329:16 334:16]
  reg [31:0] reg_out_s; // @[FPArithmetic.scala 336:28]
  wire [22:0] _T_12 = ~cond_holder; // @[FPArithmetic.scala 338:51]
  wire [22:0] _T_14 = 23'h1 + _T_12; // @[FPArithmetic.scala 338:49]
  wire [22:0] _GEN_15 = {{14'd0}, _T_2}; // @[FPArithmetic.scala 338:42]
  wire [8:0] _GEN_6 = cond_holder > _GEN_15 ? _T_2 : {{1'd0}, _GEN_2}; // @[FPArithmetic.scala 343:63 344:17]
  wire [8:0] _GEN_9 = _GEN_15 >= _T_14 ? 9'h1 : _GEN_6; // @[FPArithmetic.scala 338:67 339:15]
  wire [7:0] new_exp = _GEN_9[7:0]; // @[FPArithmetic.scala 318:23]
  wire [23:0] _new_mant_T_4 = 24'h800000 - 24'h1; // @[FPArithmetic.scala 345:47]
  wire [23:0] _GEN_7 = cond_holder > _GEN_15 ? _new_mant_T_4 : _GEN_5; // @[FPArithmetic.scala 343:63 345:18]
  wire [23:0] _GEN_10 = _GEN_15 >= _T_14 ? 24'h400000 : _GEN_7; // @[FPArithmetic.scala 338:67 340:16]
  wire [22:0] new_mant = _GEN_10[22:0]; // @[FPArithmetic.scala 320:24]
  wire [31:0] _reg_out_s_T_1 = {new_s,new_exp,new_mant}; // @[FPArithmetic.scala 341:37]
  wire [7:0] exp_0 = _GEN_0[7:0]; // @[FPArithmetic.scala 262:19]
  wire [7:0] exp_1 = _GEN_1[7:0]; // @[FPArithmetic.scala 262:19]
  multiplier multiplier ( // @[FPArithmetic.scala 293:28]
    .io_in_a(multiplier_io_in_a),
    .io_in_b(multiplier_io_in_b),
    .io_out_s(multiplier_io_out_s)
  );
  full_subber subber ( // @[FPArithmetic.scala 298:24]
    .io_in_a(subber_io_in_a),
    .io_in_b(subber_io_in_b),
    .io_out_s(subber_io_out_s),
    .io_out_c(subber_io_out_c)
  );
  twoscomplement complementN ( // @[FPArithmetic.scala 304:29]
    .io_in(complementN_io_in),
    .io_out(complementN_io_out)
  );
  full_adder_1 adderN ( // @[FPArithmetic.scala 308:24]
    .io_in_a(adderN_io_in_a),
    .io_in_b(adderN_io_in_b),
    .io_out_s(adderN_io_out_s)
  );
  assign io_out_s = reg_out_s; // @[FPArithmetic.scala 353:14]
  assign multiplier_io_in_a = {1'h1,frac_0}; // @[FPArithmetic.scala 288:24]
  assign multiplier_io_in_b = {1'h1,frac_1}; // @[FPArithmetic.scala 289:24]
  assign subber_io_in_a = 8'h7f; // @[FPArithmetic.scala 299:20]
  assign subber_io_in_b = _GEN_1[7:0]; // @[FPArithmetic.scala 262:19]
  assign complementN_io_in = subber_io_out_s; // @[FPArithmetic.scala 305:23]
  assign adderN_io_in_a = _GEN_0[7:0]; // @[FPArithmetic.scala 262:19]
  assign adderN_io_in_b = complementN_io_out; // @[FPArithmetic.scala 310:20]
  always @(posedge clock) begin
    if (reset) begin // @[FPArithmetic.scala 336:28]
      reg_out_s <= 32'h0; // @[FPArithmetic.scala 336:28]
    end else if (exp_0 == 8'h0 | exp_1 == 8'h0) begin // @[FPArithmetic.scala 348:43]
      reg_out_s <= 32'h0; // @[FPArithmetic.scala 349:17]
    end else begin
      reg_out_s <= _reg_out_s_T_1; // @[FPArithmetic.scala 351:17]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_out_s = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FP_multiply_sum(
  input         clock,
  input         reset,
  input  [31:0] io_in_a_0,
  input  [31:0] io_in_a_1,
  input  [31:0] io_in_a_2,
  input  [31:0] io_in_a_3,
  input  [31:0] io_in_a_4,
  input  [31:0] io_in_a_5,
  input  [31:0] io_in_a_6,
  input  [31:0] io_in_a_7,
  input  [31:0] io_in_a_8,
  input  [31:0] io_in_b_0,
  input  [31:0] io_in_b_1,
  input  [31:0] io_in_b_2,
  input  [31:0] io_in_b_3,
  input  [31:0] io_in_b_4,
  input  [31:0] io_in_b_5,
  input  [31:0] io_in_b_6,
  input  [31:0] io_in_b_7,
  input  [31:0] io_in_b_8,
  output [31:0] io_out_s
);
  wire  FP_multipliers_0_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_0_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_0_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_0_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_0_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_1_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_1_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_1_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_1_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_1_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_2_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_2_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_2_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_2_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_2_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_3_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_3_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_3_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_3_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_3_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_4_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_4_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_4_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_4_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_4_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_5_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_5_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_5_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_5_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_5_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_6_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_6_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_6_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_6_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_6_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_7_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_7_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_7_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_7_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_7_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_8_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_8_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_8_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_8_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_8_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_adders_0_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_0_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_0_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_0_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_0_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_1_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_1_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_1_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_1_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_1_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_2_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_2_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_2_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_2_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_2_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_3_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_3_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_3_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_3_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_3_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_4_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_4_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_4_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_4_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_4_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_5_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_5_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_5_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_5_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_5_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_6_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_6_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_6_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_6_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_6_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_7_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_7_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_7_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_7_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_7_io_out_s; // @[FPArithmetic.scala 641:28]
  FP_multiplier FP_multipliers_0 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_0_clock),
    .reset(FP_multipliers_0_reset),
    .io_in_a(FP_multipliers_0_io_in_a),
    .io_in_b(FP_multipliers_0_io_in_b),
    .io_out_s(FP_multipliers_0_io_out_s)
  );
  FP_multiplier FP_multipliers_1 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_1_clock),
    .reset(FP_multipliers_1_reset),
    .io_in_a(FP_multipliers_1_io_in_a),
    .io_in_b(FP_multipliers_1_io_in_b),
    .io_out_s(FP_multipliers_1_io_out_s)
  );
  FP_multiplier FP_multipliers_2 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_2_clock),
    .reset(FP_multipliers_2_reset),
    .io_in_a(FP_multipliers_2_io_in_a),
    .io_in_b(FP_multipliers_2_io_in_b),
    .io_out_s(FP_multipliers_2_io_out_s)
  );
  FP_multiplier FP_multipliers_3 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_3_clock),
    .reset(FP_multipliers_3_reset),
    .io_in_a(FP_multipliers_3_io_in_a),
    .io_in_b(FP_multipliers_3_io_in_b),
    .io_out_s(FP_multipliers_3_io_out_s)
  );
  FP_multiplier FP_multipliers_4 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_4_clock),
    .reset(FP_multipliers_4_reset),
    .io_in_a(FP_multipliers_4_io_in_a),
    .io_in_b(FP_multipliers_4_io_in_b),
    .io_out_s(FP_multipliers_4_io_out_s)
  );
  FP_multiplier FP_multipliers_5 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_5_clock),
    .reset(FP_multipliers_5_reset),
    .io_in_a(FP_multipliers_5_io_in_a),
    .io_in_b(FP_multipliers_5_io_in_b),
    .io_out_s(FP_multipliers_5_io_out_s)
  );
  FP_multiplier FP_multipliers_6 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_6_clock),
    .reset(FP_multipliers_6_reset),
    .io_in_a(FP_multipliers_6_io_in_a),
    .io_in_b(FP_multipliers_6_io_in_b),
    .io_out_s(FP_multipliers_6_io_out_s)
  );
  FP_multiplier FP_multipliers_7 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_7_clock),
    .reset(FP_multipliers_7_reset),
    .io_in_a(FP_multipliers_7_io_in_a),
    .io_in_b(FP_multipliers_7_io_in_b),
    .io_out_s(FP_multipliers_7_io_out_s)
  );
  FP_multiplier FP_multipliers_8 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_8_clock),
    .reset(FP_multipliers_8_reset),
    .io_in_a(FP_multipliers_8_io_in_a),
    .io_in_b(FP_multipliers_8_io_in_b),
    .io_out_s(FP_multipliers_8_io_out_s)
  );
  FP_adder FP_adders_0 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_0_clock),
    .reset(FP_adders_0_reset),
    .io_in_a(FP_adders_0_io_in_a),
    .io_in_b(FP_adders_0_io_in_b),
    .io_out_s(FP_adders_0_io_out_s)
  );
  FP_adder FP_adders_1 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_1_clock),
    .reset(FP_adders_1_reset),
    .io_in_a(FP_adders_1_io_in_a),
    .io_in_b(FP_adders_1_io_in_b),
    .io_out_s(FP_adders_1_io_out_s)
  );
  FP_adder FP_adders_2 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_2_clock),
    .reset(FP_adders_2_reset),
    .io_in_a(FP_adders_2_io_in_a),
    .io_in_b(FP_adders_2_io_in_b),
    .io_out_s(FP_adders_2_io_out_s)
  );
  FP_adder FP_adders_3 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_3_clock),
    .reset(FP_adders_3_reset),
    .io_in_a(FP_adders_3_io_in_a),
    .io_in_b(FP_adders_3_io_in_b),
    .io_out_s(FP_adders_3_io_out_s)
  );
  FP_adder FP_adders_4 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_4_clock),
    .reset(FP_adders_4_reset),
    .io_in_a(FP_adders_4_io_in_a),
    .io_in_b(FP_adders_4_io_in_b),
    .io_out_s(FP_adders_4_io_out_s)
  );
  FP_adder FP_adders_5 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_5_clock),
    .reset(FP_adders_5_reset),
    .io_in_a(FP_adders_5_io_in_a),
    .io_in_b(FP_adders_5_io_in_b),
    .io_out_s(FP_adders_5_io_out_s)
  );
  FP_adder FP_adders_6 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_6_clock),
    .reset(FP_adders_6_reset),
    .io_in_a(FP_adders_6_io_in_a),
    .io_in_b(FP_adders_6_io_in_b),
    .io_out_s(FP_adders_6_io_out_s)
  );
  FP_adder FP_adders_7 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_7_clock),
    .reset(FP_adders_7_reset),
    .io_in_a(FP_adders_7_io_in_a),
    .io_in_b(FP_adders_7_io_in_b),
    .io_out_s(FP_adders_7_io_out_s)
  );
  assign io_out_s = FP_adders_7_io_out_s; // @[FPArithmetic.scala 704:14]
  assign FP_multipliers_0_clock = clock;
  assign FP_multipliers_0_reset = reset;
  assign FP_multipliers_0_io_in_a = io_in_a_0; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_0_io_in_b = io_in_b_0; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_1_clock = clock;
  assign FP_multipliers_1_reset = reset;
  assign FP_multipliers_1_io_in_a = io_in_a_1; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_1_io_in_b = io_in_b_1; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_2_clock = clock;
  assign FP_multipliers_2_reset = reset;
  assign FP_multipliers_2_io_in_a = io_in_a_2; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_2_io_in_b = io_in_b_2; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_3_clock = clock;
  assign FP_multipliers_3_reset = reset;
  assign FP_multipliers_3_io_in_a = io_in_a_3; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_3_io_in_b = io_in_b_3; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_4_clock = clock;
  assign FP_multipliers_4_reset = reset;
  assign FP_multipliers_4_io_in_a = io_in_a_4; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_4_io_in_b = io_in_b_4; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_5_clock = clock;
  assign FP_multipliers_5_reset = reset;
  assign FP_multipliers_5_io_in_a = io_in_a_5; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_5_io_in_b = io_in_b_5; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_6_clock = clock;
  assign FP_multipliers_6_reset = reset;
  assign FP_multipliers_6_io_in_a = io_in_a_6; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_6_io_in_b = io_in_b_6; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_7_clock = clock;
  assign FP_multipliers_7_reset = reset;
  assign FP_multipliers_7_io_in_a = io_in_a_7; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_7_io_in_b = io_in_b_7; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_8_clock = clock;
  assign FP_multipliers_8_reset = reset;
  assign FP_multipliers_8_io_in_a = io_in_a_8; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_8_io_in_b = io_in_b_8; // @[FPArithmetic.scala 648:33]
  assign FP_adders_0_clock = clock;
  assign FP_adders_0_reset = reset;
  assign FP_adders_0_io_in_a = FP_multipliers_0_io_out_s; // @[FPArithmetic.scala 666:41]
  assign FP_adders_0_io_in_b = FP_multipliers_1_io_out_s; // @[FPArithmetic.scala 667:41]
  assign FP_adders_1_clock = clock;
  assign FP_adders_1_reset = reset;
  assign FP_adders_1_io_in_a = FP_multipliers_2_io_out_s; // @[FPArithmetic.scala 666:41]
  assign FP_adders_1_io_in_b = FP_multipliers_3_io_out_s; // @[FPArithmetic.scala 667:41]
  assign FP_adders_2_clock = clock;
  assign FP_adders_2_reset = reset;
  assign FP_adders_2_io_in_a = FP_multipliers_4_io_out_s; // @[FPArithmetic.scala 666:41]
  assign FP_adders_2_io_in_b = FP_multipliers_5_io_out_s; // @[FPArithmetic.scala 667:41]
  assign FP_adders_3_clock = clock;
  assign FP_adders_3_reset = reset;
  assign FP_adders_3_io_in_a = FP_multipliers_6_io_out_s; // @[FPArithmetic.scala 666:41]
  assign FP_adders_3_io_in_b = FP_multipliers_7_io_out_s; // @[FPArithmetic.scala 667:41]
  assign FP_adders_4_clock = clock;
  assign FP_adders_4_reset = reset;
  assign FP_adders_4_io_in_a = FP_adders_0_io_out_s; // @[FPArithmetic.scala 692:43]
  assign FP_adders_4_io_in_b = FP_adders_1_io_out_s; // @[FPArithmetic.scala 693:43]
  assign FP_adders_5_clock = clock;
  assign FP_adders_5_reset = reset;
  assign FP_adders_5_io_in_a = FP_adders_2_io_out_s; // @[FPArithmetic.scala 692:43]
  assign FP_adders_5_io_in_b = FP_adders_3_io_out_s; // @[FPArithmetic.scala 693:43]
  assign FP_adders_6_clock = clock;
  assign FP_adders_6_reset = reset;
  assign FP_adders_6_io_in_a = FP_adders_4_io_out_s; // @[FPArithmetic.scala 692:43]
  assign FP_adders_6_io_in_b = FP_adders_5_io_out_s; // @[FPArithmetic.scala 693:43]
  assign FP_adders_7_clock = clock;
  assign FP_adders_7_reset = reset;
  assign FP_adders_7_io_in_a = FP_adders_6_io_out_s; // @[FPArithmetic.scala 702:54]
  assign FP_adders_7_io_in_b = FP_multipliers_8_io_out_s; // @[FPArithmetic.scala 661:42]
endmodule
module MatMult1(
  input         clock,
  input         reset,
  input  [31:0] io_matA_0,
  input  [31:0] io_matA_1,
  input  [31:0] io_matA_2,
  input  [31:0] io_matA_3,
  input  [31:0] io_matA_4,
  input  [31:0] io_matA_5,
  input  [31:0] io_matA_6,
  input  [31:0] io_matA_7,
  input  [31:0] io_matA_8,
  input  [31:0] io_matB_0,
  input  [31:0] io_matB_1,
  input  [31:0] io_matB_2,
  input  [31:0] io_matB_3,
  input  [31:0] io_matB_4,
  input  [31:0] io_matB_5,
  input  [31:0] io_matB_6,
  input  [31:0] io_matB_7,
  input  [31:0] io_matB_8,
  output [31:0] io_f_mac
);
  wire  f_adder_clock; // @[MatMult.scala 17:25]
  wire  f_adder_reset; // @[MatMult.scala 17:25]
  wire [31:0] f_adder_io_in_a; // @[MatMult.scala 17:25]
  wire [31:0] f_adder_io_in_b; // @[MatMult.scala 17:25]
  wire [31:0] f_adder_io_out_s; // @[MatMult.scala 17:25]
  wire  mul_clock; // @[MatMult.scala 18:21]
  wire  mul_reset; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_a_0; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_a_1; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_a_2; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_a_3; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_a_4; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_a_5; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_a_6; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_a_7; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_a_8; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_b_0; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_b_1; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_b_2; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_b_3; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_b_4; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_b_5; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_b_6; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_b_7; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_in_b_8; // @[MatMult.scala 18:21]
  wire [31:0] mul_io_out_s; // @[MatMult.scala 18:21]
  FP_adder f_adder ( // @[MatMult.scala 17:25]
    .clock(f_adder_clock),
    .reset(f_adder_reset),
    .io_in_a(f_adder_io_in_a),
    .io_in_b(f_adder_io_in_b),
    .io_out_s(f_adder_io_out_s)
  );
  FP_multiply_sum mul ( // @[MatMult.scala 18:21]
    .clock(mul_clock),
    .reset(mul_reset),
    .io_in_a_0(mul_io_in_a_0),
    .io_in_a_1(mul_io_in_a_1),
    .io_in_a_2(mul_io_in_a_2),
    .io_in_a_3(mul_io_in_a_3),
    .io_in_a_4(mul_io_in_a_4),
    .io_in_a_5(mul_io_in_a_5),
    .io_in_a_6(mul_io_in_a_6),
    .io_in_a_7(mul_io_in_a_7),
    .io_in_a_8(mul_io_in_a_8),
    .io_in_b_0(mul_io_in_b_0),
    .io_in_b_1(mul_io_in_b_1),
    .io_in_b_2(mul_io_in_b_2),
    .io_in_b_3(mul_io_in_b_3),
    .io_in_b_4(mul_io_in_b_4),
    .io_in_b_5(mul_io_in_b_5),
    .io_in_b_6(mul_io_in_b_6),
    .io_in_b_7(mul_io_in_b_7),
    .io_in_b_8(mul_io_in_b_8),
    .io_out_s(mul_io_out_s)
  );
  assign io_f_mac = f_adder_io_out_s[31] ? 32'h0 : f_adder_io_out_s; // @[MatMult.scala 26:28 27:16 29:16]
  assign f_adder_clock = clock;
  assign f_adder_reset = reset;
  assign f_adder_io_in_a = 32'h0; // @[MatMult.scala 23:21]
  assign f_adder_io_in_b = mul_io_out_s; // @[MatMult.scala 24:21]
  assign mul_clock = clock;
  assign mul_reset = reset;
  assign mul_io_in_a_0 = io_matA_0; // @[MatMult.scala 20:22]
  assign mul_io_in_a_1 = io_matA_1; // @[MatMult.scala 20:22]
  assign mul_io_in_a_2 = io_matA_2; // @[MatMult.scala 20:22]
  assign mul_io_in_a_3 = io_matA_3; // @[MatMult.scala 20:22]
  assign mul_io_in_a_4 = io_matA_4; // @[MatMult.scala 20:22]
  assign mul_io_in_a_5 = io_matA_5; // @[MatMult.scala 20:22]
  assign mul_io_in_a_6 = io_matA_6; // @[MatMult.scala 20:22]
  assign mul_io_in_a_7 = io_matA_7; // @[MatMult.scala 20:22]
  assign mul_io_in_a_8 = io_matA_8; // @[MatMult.scala 20:22]
  assign mul_io_in_b_0 = io_matB_0; // @[MatMult.scala 21:22]
  assign mul_io_in_b_1 = io_matB_1; // @[MatMult.scala 21:22]
  assign mul_io_in_b_2 = io_matB_2; // @[MatMult.scala 21:22]
  assign mul_io_in_b_3 = io_matB_3; // @[MatMult.scala 21:22]
  assign mul_io_in_b_4 = io_matB_4; // @[MatMult.scala 21:22]
  assign mul_io_in_b_5 = io_matB_5; // @[MatMult.scala 21:22]
  assign mul_io_in_b_6 = io_matB_6; // @[MatMult.scala 21:22]
  assign mul_io_in_b_7 = io_matB_7; // @[MatMult.scala 21:22]
  assign mul_io_in_b_8 = io_matB_8; // @[MatMult.scala 21:22]
endmodule
module demux1_8(
  input         clock,
  input  [31:0] io_in,
  input  [2:0]  io_sel,
  input         io_enable_0,
  input         io_enable_1,
  input         io_enable_2,
  input         io_enable_3,
  input         io_enable_4,
  input         io_enable_5,
  input         io_enable_6,
  input         io_enable_7,
  output [31:0] io_out_0,
  output [31:0] io_out_1,
  output [31:0] io_out_2,
  output [31:0] io_out_3,
  output [31:0] io_out_4,
  output [31:0] io_out_5,
  output [31:0] io_out_6,
  output [31:0] io_out_7
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] enableReg_0; // @[FPArithmetic.scala 914:24]
  reg [31:0] enableReg_1; // @[FPArithmetic.scala 914:24]
  reg [31:0] enableReg_2; // @[FPArithmetic.scala 914:24]
  reg [31:0] enableReg_3; // @[FPArithmetic.scala 914:24]
  reg [31:0] enableReg_4; // @[FPArithmetic.scala 914:24]
  reg [31:0] enableReg_5; // @[FPArithmetic.scala 914:24]
  reg [31:0] enableReg_6; // @[FPArithmetic.scala 914:24]
  reg [31:0] enableReg_7; // @[FPArithmetic.scala 914:24]
  wire [31:0] _GEN_0 = io_sel == 3'h6 ? io_in : 32'h0; // @[FPArithmetic.scala 917:12 931:33 932:12]
  wire [31:0] _GEN_1 = io_sel == 3'h6 ? 32'h0 : io_in; // @[FPArithmetic.scala 917:12 931:33 934:12]
  wire [31:0] _GEN_2 = io_sel == 3'h5 ? io_in : 32'h0; // @[FPArithmetic.scala 917:12 929:33 930:12]
  wire [31:0] _GEN_3 = io_sel == 3'h5 ? 32'h0 : _GEN_0; // @[FPArithmetic.scala 917:12 929:33]
  wire [31:0] _GEN_4 = io_sel == 3'h5 ? 32'h0 : _GEN_1; // @[FPArithmetic.scala 917:12 929:33]
  wire [31:0] _GEN_5 = io_sel == 3'h4 ? io_in : 32'h0; // @[FPArithmetic.scala 917:12 927:33 928:12]
  wire [31:0] _GEN_6 = io_sel == 3'h4 ? 32'h0 : _GEN_2; // @[FPArithmetic.scala 917:12 927:33]
  wire [31:0] _GEN_7 = io_sel == 3'h4 ? 32'h0 : _GEN_3; // @[FPArithmetic.scala 917:12 927:33]
  wire [31:0] _GEN_8 = io_sel == 3'h4 ? 32'h0 : _GEN_4; // @[FPArithmetic.scala 917:12 927:33]
  wire [31:0] _GEN_9 = io_sel == 3'h3 ? io_in : 32'h0; // @[FPArithmetic.scala 917:12 925:33 926:12]
  wire [31:0] _GEN_10 = io_sel == 3'h3 ? 32'h0 : _GEN_5; // @[FPArithmetic.scala 917:12 925:33]
  wire [31:0] _GEN_11 = io_sel == 3'h3 ? 32'h0 : _GEN_6; // @[FPArithmetic.scala 917:12 925:33]
  wire [31:0] _GEN_12 = io_sel == 3'h3 ? 32'h0 : _GEN_7; // @[FPArithmetic.scala 917:12 925:33]
  wire [31:0] _GEN_13 = io_sel == 3'h3 ? 32'h0 : _GEN_8; // @[FPArithmetic.scala 917:12 925:33]
  assign io_out_0 = enableReg_0; // @[FPArithmetic.scala 963:17]
  assign io_out_1 = enableReg_1; // @[FPArithmetic.scala 963:17]
  assign io_out_2 = enableReg_2; // @[FPArithmetic.scala 963:17]
  assign io_out_3 = enableReg_3; // @[FPArithmetic.scala 963:17]
  assign io_out_4 = enableReg_4; // @[FPArithmetic.scala 963:17]
  assign io_out_5 = enableReg_5; // @[FPArithmetic.scala 963:17]
  assign io_out_6 = enableReg_6; // @[FPArithmetic.scala 963:17]
  assign io_out_7 = enableReg_7; // @[FPArithmetic.scala 963:17]
  always @(posedge clock) begin
    if (io_enable_0) begin // @[FPArithmetic.scala 937:33]
      if (io_sel == 3'h0) begin // @[FPArithmetic.scala 919:27]
        enableReg_0 <= io_in; // @[FPArithmetic.scala 920:12]
      end else begin
        enableReg_0 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end
    end
    if (io_enable_1) begin // @[FPArithmetic.scala 940:33]
      if (io_sel == 3'h0) begin // @[FPArithmetic.scala 919:27]
        enableReg_1 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else if (io_sel == 3'h1) begin // @[FPArithmetic.scala 921:33]
        enableReg_1 <= io_in; // @[FPArithmetic.scala 922:12]
      end else begin
        enableReg_1 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end
    end
    if (io_enable_2) begin // @[FPArithmetic.scala 943:33]
      if (io_sel == 3'h0) begin // @[FPArithmetic.scala 919:27]
        enableReg_2 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else if (io_sel == 3'h1) begin // @[FPArithmetic.scala 921:33]
        enableReg_2 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else if (io_sel == 3'h2) begin // @[FPArithmetic.scala 923:33]
        enableReg_2 <= io_in; // @[FPArithmetic.scala 924:12]
      end else begin
        enableReg_2 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end
    end
    if (io_enable_3) begin // @[FPArithmetic.scala 946:33]
      if (io_sel == 3'h0) begin // @[FPArithmetic.scala 919:27]
        enableReg_3 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else if (io_sel == 3'h1) begin // @[FPArithmetic.scala 921:33]
        enableReg_3 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else if (io_sel == 3'h2) begin // @[FPArithmetic.scala 923:33]
        enableReg_3 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else begin
        enableReg_3 <= _GEN_9;
      end
    end
    if (io_enable_4) begin // @[FPArithmetic.scala 949:33]
      if (io_sel == 3'h0) begin // @[FPArithmetic.scala 919:27]
        enableReg_4 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else if (io_sel == 3'h1) begin // @[FPArithmetic.scala 921:33]
        enableReg_4 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else if (io_sel == 3'h2) begin // @[FPArithmetic.scala 923:33]
        enableReg_4 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else begin
        enableReg_4 <= _GEN_10;
      end
    end
    if (io_enable_5) begin // @[FPArithmetic.scala 952:33]
      if (io_sel == 3'h0) begin // @[FPArithmetic.scala 919:27]
        enableReg_5 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else if (io_sel == 3'h1) begin // @[FPArithmetic.scala 921:33]
        enableReg_5 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else if (io_sel == 3'h2) begin // @[FPArithmetic.scala 923:33]
        enableReg_5 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else begin
        enableReg_5 <= _GEN_11;
      end
    end
    if (io_enable_6) begin // @[FPArithmetic.scala 955:33]
      if (io_sel == 3'h0) begin // @[FPArithmetic.scala 919:27]
        enableReg_6 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else if (io_sel == 3'h1) begin // @[FPArithmetic.scala 921:33]
        enableReg_6 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else if (io_sel == 3'h2) begin // @[FPArithmetic.scala 923:33]
        enableReg_6 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else begin
        enableReg_6 <= _GEN_12;
      end
    end
    if (io_enable_7) begin // @[FPArithmetic.scala 958:33]
      if (io_sel == 3'h0) begin // @[FPArithmetic.scala 919:27]
        enableReg_7 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else if (io_sel == 3'h1) begin // @[FPArithmetic.scala 921:33]
        enableReg_7 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else if (io_sel == 3'h2) begin // @[FPArithmetic.scala 923:33]
        enableReg_7 <= 32'h0; // @[FPArithmetic.scala 917:12]
      end else begin
        enableReg_7 <= _GEN_13;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enableReg_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  enableReg_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  enableReg_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  enableReg_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  enableReg_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  enableReg_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  enableReg_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  enableReg_7 = _RAND_7[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module full_subber_28(
  input  [22:0] io_in_a,
  input  [22:0] io_in_b,
  output        io_out_c
);
  wire [23:0] _result_T = io_in_a - io_in_b; // @[Arithmetic.scala 70:23]
  wire [24:0] _result_T_2 = _result_T - 24'h0; // @[Arithmetic.scala 70:34]
  wire [23:0] result = _result_T_2[23:0]; // @[Arithmetic.scala 69:22 70:12]
  assign io_out_c = result[23]; // @[Arithmetic.scala 72:23]
endmodule
module FP_Comparitor(
  input  [31:0] io_in_a,
  input  [31:0] io_in_b,
  output [31:0] io_out_s
);
  wire [7:0] full_subber_io_in_a; // @[FPArithmetic.scala 788:24]
  wire [7:0] full_subber_io_in_b; // @[FPArithmetic.scala 788:24]
  wire [7:0] full_subber_io_out_s; // @[FPArithmetic.scala 788:24]
  wire  full_subber_io_out_c; // @[FPArithmetic.scala 788:24]
  wire [22:0] full_subber_1_io_in_a; // @[FPArithmetic.scala 793:25]
  wire [22:0] full_subber_1_io_in_b; // @[FPArithmetic.scala 793:25]
  wire  full_subber_1_io_out_c; // @[FPArithmetic.scala 793:25]
  wire [8:0] _T_2 = 9'h100 - 9'h2; // @[FPArithmetic.scala 767:64]
  wire [8:0] _GEN_5 = {{1'd0}, io_in_a[30:23]}; // @[FPArithmetic.scala 767:36]
  wire [8:0] _GEN_0 = _GEN_5 > _T_2 ? _T_2 : {{1'd0}, io_in_a[30:23]}; // @[FPArithmetic.scala 767:71 768:14 770:14]
  wire [8:0] _GEN_6 = {{1'd0}, io_in_b[30:23]}; // @[FPArithmetic.scala 772:36]
  wire [8:0] _GEN_1 = _GEN_6 > _T_2 ? _T_2 : {{1'd0}, io_in_b[30:23]}; // @[FPArithmetic.scala 772:71 773:14 775:14]
  wire [31:0] _GEN_2 = full_subber_1_io_out_c ? io_in_b : io_in_a; // @[FPArithmetic.scala 803:35 804:18 806:18]
  wire [31:0] _GEN_3 = full_subber_io_out_s > 8'h0 ? io_in_a : _GEN_2; // @[FPArithmetic.scala 800:36 801:16]
  full_subber full_subber ( // @[FPArithmetic.scala 788:24]
    .io_in_a(full_subber_io_in_a),
    .io_in_b(full_subber_io_in_b),
    .io_out_s(full_subber_io_out_s),
    .io_out_c(full_subber_io_out_c)
  );
  full_subber_28 full_subber_1 ( // @[FPArithmetic.scala 793:25]
    .io_in_a(full_subber_1_io_in_a),
    .io_in_b(full_subber_1_io_in_b),
    .io_out_c(full_subber_1_io_out_c)
  );
  assign io_out_s = full_subber_io_out_c ? io_in_b : _GEN_3; // @[FPArithmetic.scala 798:32 799:16]
  assign full_subber_io_in_a = _GEN_0[7:0]; // @[FPArithmetic.scala 766:19]
  assign full_subber_io_in_b = _GEN_1[7:0]; // @[FPArithmetic.scala 766:19]
  assign full_subber_1_io_in_a = io_in_a[22:0]; // @[FPArithmetic.scala 780:23]
  assign full_subber_1_io_in_b = io_in_b[22:0]; // @[FPArithmetic.scala 781:23]
endmodule
module Max_Pooling(
  input  [31:0] io_pixel1,
  input  [31:0] io_pixel2,
  input  [31:0] io_pixel3,
  input  [31:0] io_pixel4,
  output [31:0] io_f_max
);
  wire [31:0] fp1_io_in_a; // @[Pooling.scala 19:21]
  wire [31:0] fp1_io_in_b; // @[Pooling.scala 19:21]
  wire [31:0] fp1_io_out_s; // @[Pooling.scala 19:21]
  wire [31:0] fp2_io_in_a; // @[Pooling.scala 24:21]
  wire [31:0] fp2_io_in_b; // @[Pooling.scala 24:21]
  wire [31:0] fp2_io_out_s; // @[Pooling.scala 24:21]
  wire [31:0] fp3_io_in_a; // @[Pooling.scala 29:21]
  wire [31:0] fp3_io_in_b; // @[Pooling.scala 29:21]
  wire [31:0] fp3_io_out_s; // @[Pooling.scala 29:21]
  FP_Comparitor fp1 ( // @[Pooling.scala 19:21]
    .io_in_a(fp1_io_in_a),
    .io_in_b(fp1_io_in_b),
    .io_out_s(fp1_io_out_s)
  );
  FP_Comparitor fp2 ( // @[Pooling.scala 24:21]
    .io_in_a(fp2_io_in_a),
    .io_in_b(fp2_io_in_b),
    .io_out_s(fp2_io_out_s)
  );
  FP_Comparitor fp3 ( // @[Pooling.scala 29:21]
    .io_in_a(fp3_io_in_a),
    .io_in_b(fp3_io_in_b),
    .io_out_s(fp3_io_out_s)
  );
  assign io_f_max = fp3_io_out_s; // @[Pooling.scala 32:14]
  assign fp1_io_in_a = io_pixel1; // @[Pooling.scala 20:17]
  assign fp1_io_in_b = io_pixel2; // @[Pooling.scala 21:17]
  assign fp2_io_in_a = io_pixel3; // @[Pooling.scala 25:17]
  assign fp2_io_in_b = io_pixel4; // @[Pooling.scala 26:17]
  assign fp3_io_in_a = fp1_io_out_s; // @[Pooling.scala 16:20 22:10]
  assign fp3_io_in_b = fp2_io_out_s; // @[Pooling.scala 17:20 27:10]
endmodule
module Pooling_Controller(
  input  [31:0] io_InputMatrix_0,
  input  [31:0] io_InputMatrix_1,
  input  [31:0] io_InputMatrix_2,
  input  [31:0] io_InputMatrix_3,
  input  [31:0] io_InputMatrix_4,
  input  [31:0] io_InputMatrix_5,
  input  [31:0] io_InputMatrix_6,
  input  [31:0] io_InputMatrix_7,
  input  [31:0] io_InputMatrix_8,
  input  [31:0] io_InputMatrix_9,
  input  [31:0] io_InputMatrix_10,
  input  [31:0] io_InputMatrix_11,
  input  [31:0] io_InputMatrix_12,
  input  [31:0] io_InputMatrix_13,
  input  [31:0] io_InputMatrix_14,
  input  [31:0] io_InputMatrix_15,
  input  [31:0] io_InputMatrix_16,
  input  [31:0] io_InputMatrix_17,
  input  [31:0] io_InputMatrix_18,
  input  [31:0] io_InputMatrix_19,
  input  [31:0] io_InputMatrix_20,
  input  [31:0] io_InputMatrix_21,
  input  [31:0] io_InputMatrix_22,
  input  [31:0] io_InputMatrix_23,
  input  [31:0] io_InputMatrix_24,
  input  [31:0] io_InputMatrix_25,
  input  [31:0] io_InputMatrix_26,
  input  [31:0] io_InputMatrix_27,
  input  [31:0] io_InputMatrix_28,
  input  [31:0] io_InputMatrix_29,
  input  [31:0] io_InputMatrix_30,
  input  [31:0] io_InputMatrix_31,
  input  [31:0] io_InputMatrix_32,
  input  [31:0] io_InputMatrix_33,
  input  [31:0] io_InputMatrix_34,
  input  [31:0] io_InputMatrix_35,
  input  [31:0] io_InputMatrix_36,
  input  [31:0] io_InputMatrix_37,
  input  [31:0] io_InputMatrix_38,
  input  [31:0] io_InputMatrix_39,
  input  [31:0] io_InputMatrix_40,
  input  [31:0] io_InputMatrix_41,
  input  [31:0] io_InputMatrix_42,
  input  [31:0] io_InputMatrix_43,
  input  [31:0] io_InputMatrix_44,
  input  [31:0] io_InputMatrix_45,
  input  [31:0] io_InputMatrix_46,
  input  [31:0] io_InputMatrix_47,
  input  [31:0] io_InputMatrix_48,
  input  [31:0] io_InputMatrix_49,
  input  [31:0] io_InputMatrix_50,
  input  [31:0] io_InputMatrix_51,
  input  [31:0] io_InputMatrix_52,
  input  [31:0] io_InputMatrix_53,
  input  [31:0] io_InputMatrix_54,
  input  [31:0] io_InputMatrix_55,
  input  [31:0] io_InputMatrix_56,
  input  [31:0] io_InputMatrix_57,
  input  [31:0] io_InputMatrix_58,
  input  [31:0] io_InputMatrix_59,
  input  [31:0] io_InputMatrix_60,
  input  [31:0] io_InputMatrix_61,
  input  [31:0] io_InputMatrix_62,
  input  [31:0] io_InputMatrix_63,
  output [31:0] io_single_out_0,
  output [31:0] io_single_out_1,
  output [31:0] io_single_out_2,
  output [31:0] io_single_out_3,
  output [31:0] io_single_out_4,
  output [31:0] io_single_out_5,
  output [31:0] io_single_out_6,
  output [31:0] io_single_out_7,
  output [31:0] io_single_out_8,
  output [31:0] io_single_out_9,
  output [31:0] io_single_out_10,
  output [31:0] io_single_out_11,
  output [31:0] io_single_out_12,
  output [31:0] io_single_out_13,
  output [31:0] io_single_out_14,
  output [31:0] io_single_out_15
);
  wire [31:0] Max_Poolings_0_io_pixel1; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_0_io_pixel2; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_0_io_pixel3; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_0_io_pixel4; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_0_io_f_max; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_1_io_pixel1; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_1_io_pixel2; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_1_io_pixel3; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_1_io_pixel4; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_1_io_f_max; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_2_io_pixel1; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_2_io_pixel2; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_2_io_pixel3; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_2_io_pixel4; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_2_io_f_max; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_3_io_pixel1; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_3_io_pixel2; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_3_io_pixel3; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_3_io_pixel4; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_3_io_f_max; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_4_io_pixel1; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_4_io_pixel2; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_4_io_pixel3; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_4_io_pixel4; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_4_io_f_max; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_5_io_pixel1; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_5_io_pixel2; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_5_io_pixel3; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_5_io_pixel4; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_5_io_f_max; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_6_io_pixel1; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_6_io_pixel2; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_6_io_pixel3; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_6_io_pixel4; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_6_io_f_max; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_7_io_pixel1; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_7_io_pixel2; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_7_io_pixel3; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_7_io_pixel4; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_7_io_f_max; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_8_io_pixel1; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_8_io_pixel2; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_8_io_pixel3; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_8_io_pixel4; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_8_io_f_max; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_9_io_pixel1; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_9_io_pixel2; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_9_io_pixel3; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_9_io_pixel4; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_9_io_f_max; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_10_io_pixel1; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_10_io_pixel2; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_10_io_pixel3; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_10_io_pixel4; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_10_io_f_max; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_11_io_pixel1; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_11_io_pixel2; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_11_io_pixel3; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_11_io_pixel4; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_11_io_f_max; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_12_io_pixel1; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_12_io_pixel2; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_12_io_pixel3; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_12_io_pixel4; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_12_io_f_max; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_13_io_pixel1; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_13_io_pixel2; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_13_io_pixel3; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_13_io_pixel4; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_13_io_f_max; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_14_io_pixel1; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_14_io_pixel2; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_14_io_pixel3; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_14_io_pixel4; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_14_io_f_max; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_15_io_pixel1; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_15_io_pixel2; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_15_io_pixel3; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_15_io_pixel4; // @[PoolingController.scala 23:31]
  wire [31:0] Max_Poolings_15_io_f_max; // @[PoolingController.scala 23:31]
  Max_Pooling Max_Poolings_0 ( // @[PoolingController.scala 23:31]
    .io_pixel1(Max_Poolings_0_io_pixel1),
    .io_pixel2(Max_Poolings_0_io_pixel2),
    .io_pixel3(Max_Poolings_0_io_pixel3),
    .io_pixel4(Max_Poolings_0_io_pixel4),
    .io_f_max(Max_Poolings_0_io_f_max)
  );
  Max_Pooling Max_Poolings_1 ( // @[PoolingController.scala 23:31]
    .io_pixel1(Max_Poolings_1_io_pixel1),
    .io_pixel2(Max_Poolings_1_io_pixel2),
    .io_pixel3(Max_Poolings_1_io_pixel3),
    .io_pixel4(Max_Poolings_1_io_pixel4),
    .io_f_max(Max_Poolings_1_io_f_max)
  );
  Max_Pooling Max_Poolings_2 ( // @[PoolingController.scala 23:31]
    .io_pixel1(Max_Poolings_2_io_pixel1),
    .io_pixel2(Max_Poolings_2_io_pixel2),
    .io_pixel3(Max_Poolings_2_io_pixel3),
    .io_pixel4(Max_Poolings_2_io_pixel4),
    .io_f_max(Max_Poolings_2_io_f_max)
  );
  Max_Pooling Max_Poolings_3 ( // @[PoolingController.scala 23:31]
    .io_pixel1(Max_Poolings_3_io_pixel1),
    .io_pixel2(Max_Poolings_3_io_pixel2),
    .io_pixel3(Max_Poolings_3_io_pixel3),
    .io_pixel4(Max_Poolings_3_io_pixel4),
    .io_f_max(Max_Poolings_3_io_f_max)
  );
  Max_Pooling Max_Poolings_4 ( // @[PoolingController.scala 23:31]
    .io_pixel1(Max_Poolings_4_io_pixel1),
    .io_pixel2(Max_Poolings_4_io_pixel2),
    .io_pixel3(Max_Poolings_4_io_pixel3),
    .io_pixel4(Max_Poolings_4_io_pixel4),
    .io_f_max(Max_Poolings_4_io_f_max)
  );
  Max_Pooling Max_Poolings_5 ( // @[PoolingController.scala 23:31]
    .io_pixel1(Max_Poolings_5_io_pixel1),
    .io_pixel2(Max_Poolings_5_io_pixel2),
    .io_pixel3(Max_Poolings_5_io_pixel3),
    .io_pixel4(Max_Poolings_5_io_pixel4),
    .io_f_max(Max_Poolings_5_io_f_max)
  );
  Max_Pooling Max_Poolings_6 ( // @[PoolingController.scala 23:31]
    .io_pixel1(Max_Poolings_6_io_pixel1),
    .io_pixel2(Max_Poolings_6_io_pixel2),
    .io_pixel3(Max_Poolings_6_io_pixel3),
    .io_pixel4(Max_Poolings_6_io_pixel4),
    .io_f_max(Max_Poolings_6_io_f_max)
  );
  Max_Pooling Max_Poolings_7 ( // @[PoolingController.scala 23:31]
    .io_pixel1(Max_Poolings_7_io_pixel1),
    .io_pixel2(Max_Poolings_7_io_pixel2),
    .io_pixel3(Max_Poolings_7_io_pixel3),
    .io_pixel4(Max_Poolings_7_io_pixel4),
    .io_f_max(Max_Poolings_7_io_f_max)
  );
  Max_Pooling Max_Poolings_8 ( // @[PoolingController.scala 23:31]
    .io_pixel1(Max_Poolings_8_io_pixel1),
    .io_pixel2(Max_Poolings_8_io_pixel2),
    .io_pixel3(Max_Poolings_8_io_pixel3),
    .io_pixel4(Max_Poolings_8_io_pixel4),
    .io_f_max(Max_Poolings_8_io_f_max)
  );
  Max_Pooling Max_Poolings_9 ( // @[PoolingController.scala 23:31]
    .io_pixel1(Max_Poolings_9_io_pixel1),
    .io_pixel2(Max_Poolings_9_io_pixel2),
    .io_pixel3(Max_Poolings_9_io_pixel3),
    .io_pixel4(Max_Poolings_9_io_pixel4),
    .io_f_max(Max_Poolings_9_io_f_max)
  );
  Max_Pooling Max_Poolings_10 ( // @[PoolingController.scala 23:31]
    .io_pixel1(Max_Poolings_10_io_pixel1),
    .io_pixel2(Max_Poolings_10_io_pixel2),
    .io_pixel3(Max_Poolings_10_io_pixel3),
    .io_pixel4(Max_Poolings_10_io_pixel4),
    .io_f_max(Max_Poolings_10_io_f_max)
  );
  Max_Pooling Max_Poolings_11 ( // @[PoolingController.scala 23:31]
    .io_pixel1(Max_Poolings_11_io_pixel1),
    .io_pixel2(Max_Poolings_11_io_pixel2),
    .io_pixel3(Max_Poolings_11_io_pixel3),
    .io_pixel4(Max_Poolings_11_io_pixel4),
    .io_f_max(Max_Poolings_11_io_f_max)
  );
  Max_Pooling Max_Poolings_12 ( // @[PoolingController.scala 23:31]
    .io_pixel1(Max_Poolings_12_io_pixel1),
    .io_pixel2(Max_Poolings_12_io_pixel2),
    .io_pixel3(Max_Poolings_12_io_pixel3),
    .io_pixel4(Max_Poolings_12_io_pixel4),
    .io_f_max(Max_Poolings_12_io_f_max)
  );
  Max_Pooling Max_Poolings_13 ( // @[PoolingController.scala 23:31]
    .io_pixel1(Max_Poolings_13_io_pixel1),
    .io_pixel2(Max_Poolings_13_io_pixel2),
    .io_pixel3(Max_Poolings_13_io_pixel3),
    .io_pixel4(Max_Poolings_13_io_pixel4),
    .io_f_max(Max_Poolings_13_io_f_max)
  );
  Max_Pooling Max_Poolings_14 ( // @[PoolingController.scala 23:31]
    .io_pixel1(Max_Poolings_14_io_pixel1),
    .io_pixel2(Max_Poolings_14_io_pixel2),
    .io_pixel3(Max_Poolings_14_io_pixel3),
    .io_pixel4(Max_Poolings_14_io_pixel4),
    .io_f_max(Max_Poolings_14_io_f_max)
  );
  Max_Pooling Max_Poolings_15 ( // @[PoolingController.scala 23:31]
    .io_pixel1(Max_Poolings_15_io_pixel1),
    .io_pixel2(Max_Poolings_15_io_pixel2),
    .io_pixel3(Max_Poolings_15_io_pixel3),
    .io_pixel4(Max_Poolings_15_io_pixel4),
    .io_f_max(Max_Poolings_15_io_f_max)
  );
  assign io_single_out_0 = Max_Poolings_0_io_f_max; // @[PoolingController.scala 47:23]
  assign io_single_out_1 = Max_Poolings_1_io_f_max; // @[PoolingController.scala 47:23]
  assign io_single_out_2 = Max_Poolings_2_io_f_max; // @[PoolingController.scala 47:23]
  assign io_single_out_3 = Max_Poolings_3_io_f_max; // @[PoolingController.scala 47:23]
  assign io_single_out_4 = Max_Poolings_4_io_f_max; // @[PoolingController.scala 47:23]
  assign io_single_out_5 = Max_Poolings_5_io_f_max; // @[PoolingController.scala 47:23]
  assign io_single_out_6 = Max_Poolings_6_io_f_max; // @[PoolingController.scala 47:23]
  assign io_single_out_7 = Max_Poolings_7_io_f_max; // @[PoolingController.scala 47:23]
  assign io_single_out_8 = Max_Poolings_8_io_f_max; // @[PoolingController.scala 47:23]
  assign io_single_out_9 = Max_Poolings_9_io_f_max; // @[PoolingController.scala 47:23]
  assign io_single_out_10 = Max_Poolings_10_io_f_max; // @[PoolingController.scala 47:23]
  assign io_single_out_11 = Max_Poolings_11_io_f_max; // @[PoolingController.scala 47:23]
  assign io_single_out_12 = Max_Poolings_12_io_f_max; // @[PoolingController.scala 47:23]
  assign io_single_out_13 = Max_Poolings_13_io_f_max; // @[PoolingController.scala 47:23]
  assign io_single_out_14 = Max_Poolings_14_io_f_max; // @[PoolingController.scala 47:23]
  assign io_single_out_15 = Max_Poolings_15_io_f_max; // @[PoolingController.scala 47:23]
  assign Max_Poolings_0_io_pixel1 = io_InputMatrix_0; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_0_io_pixel2 = io_InputMatrix_1; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_0_io_pixel3 = io_InputMatrix_8; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_0_io_pixel4 = io_InputMatrix_9; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_1_io_pixel1 = io_InputMatrix_2; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_1_io_pixel2 = io_InputMatrix_3; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_1_io_pixel3 = io_InputMatrix_10; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_1_io_pixel4 = io_InputMatrix_11; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_2_io_pixel1 = io_InputMatrix_4; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_2_io_pixel2 = io_InputMatrix_5; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_2_io_pixel3 = io_InputMatrix_12; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_2_io_pixel4 = io_InputMatrix_13; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_3_io_pixel1 = io_InputMatrix_6; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_3_io_pixel2 = io_InputMatrix_7; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_3_io_pixel3 = io_InputMatrix_14; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_3_io_pixel4 = io_InputMatrix_15; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_4_io_pixel1 = io_InputMatrix_16; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_4_io_pixel2 = io_InputMatrix_17; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_4_io_pixel3 = io_InputMatrix_24; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_4_io_pixel4 = io_InputMatrix_25; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_5_io_pixel1 = io_InputMatrix_18; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_5_io_pixel2 = io_InputMatrix_19; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_5_io_pixel3 = io_InputMatrix_26; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_5_io_pixel4 = io_InputMatrix_27; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_6_io_pixel1 = io_InputMatrix_20; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_6_io_pixel2 = io_InputMatrix_21; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_6_io_pixel3 = io_InputMatrix_28; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_6_io_pixel4 = io_InputMatrix_29; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_7_io_pixel1 = io_InputMatrix_22; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_7_io_pixel2 = io_InputMatrix_23; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_7_io_pixel3 = io_InputMatrix_30; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_7_io_pixel4 = io_InputMatrix_31; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_8_io_pixel1 = io_InputMatrix_32; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_8_io_pixel2 = io_InputMatrix_33; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_8_io_pixel3 = io_InputMatrix_40; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_8_io_pixel4 = io_InputMatrix_41; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_9_io_pixel1 = io_InputMatrix_34; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_9_io_pixel2 = io_InputMatrix_35; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_9_io_pixel3 = io_InputMatrix_42; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_9_io_pixel4 = io_InputMatrix_43; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_10_io_pixel1 = io_InputMatrix_36; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_10_io_pixel2 = io_InputMatrix_37; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_10_io_pixel3 = io_InputMatrix_44; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_10_io_pixel4 = io_InputMatrix_45; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_11_io_pixel1 = io_InputMatrix_38; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_11_io_pixel2 = io_InputMatrix_39; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_11_io_pixel3 = io_InputMatrix_46; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_11_io_pixel4 = io_InputMatrix_47; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_12_io_pixel1 = io_InputMatrix_48; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_12_io_pixel2 = io_InputMatrix_49; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_12_io_pixel3 = io_InputMatrix_56; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_12_io_pixel4 = io_InputMatrix_57; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_13_io_pixel1 = io_InputMatrix_50; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_13_io_pixel2 = io_InputMatrix_51; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_13_io_pixel3 = io_InputMatrix_58; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_13_io_pixel4 = io_InputMatrix_59; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_14_io_pixel1 = io_InputMatrix_52; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_14_io_pixel2 = io_InputMatrix_53; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_14_io_pixel3 = io_InputMatrix_60; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_14_io_pixel4 = io_InputMatrix_61; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_15_io_pixel1 = io_InputMatrix_54; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_15_io_pixel2 = io_InputMatrix_55; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_15_io_pixel3 = io_InputMatrix_62; // @[PoolingController.scala 20:22 36:29]
  assign Max_Poolings_15_io_pixel4 = io_InputMatrix_63; // @[PoolingController.scala 20:22 36:29]
endmodule
module FP_multiply_sum_1(
  input         clock,
  input         reset,
  input  [31:0] io_in_a_0,
  input  [31:0] io_in_a_1,
  input  [31:0] io_in_a_2,
  input  [31:0] io_in_a_3,
  input  [31:0] io_in_a_4,
  input  [31:0] io_in_a_5,
  input  [31:0] io_in_a_6,
  input  [31:0] io_in_a_7,
  input  [31:0] io_in_a_8,
  input  [31:0] io_in_a_9,
  input  [31:0] io_in_a_10,
  input  [31:0] io_in_a_11,
  input  [31:0] io_in_a_12,
  input  [31:0] io_in_a_13,
  input  [31:0] io_in_a_14,
  input  [31:0] io_in_a_15,
  input  [31:0] io_in_b_0,
  input  [31:0] io_in_b_1,
  input  [31:0] io_in_b_2,
  input  [31:0] io_in_b_3,
  input  [31:0] io_in_b_4,
  input  [31:0] io_in_b_5,
  input  [31:0] io_in_b_6,
  input  [31:0] io_in_b_7,
  input  [31:0] io_in_b_8,
  input  [31:0] io_in_b_9,
  input  [31:0] io_in_b_10,
  input  [31:0] io_in_b_11,
  input  [31:0] io_in_b_12,
  input  [31:0] io_in_b_13,
  input  [31:0] io_in_b_14,
  input  [31:0] io_in_b_15,
  output [31:0] io_out_s
);
  wire  FP_multipliers_0_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_0_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_0_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_0_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_0_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_1_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_1_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_1_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_1_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_1_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_2_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_2_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_2_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_2_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_2_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_3_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_3_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_3_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_3_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_3_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_4_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_4_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_4_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_4_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_4_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_5_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_5_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_5_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_5_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_5_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_6_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_6_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_6_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_6_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_6_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_7_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_7_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_7_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_7_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_7_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_8_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_8_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_8_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_8_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_8_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_9_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_9_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_9_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_9_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_9_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_10_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_10_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_10_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_10_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_10_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_11_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_11_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_11_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_11_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_11_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_12_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_12_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_12_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_12_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_12_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_13_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_13_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_13_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_13_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_13_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_14_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_14_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_14_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_14_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_14_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_15_clock; // @[FPArithmetic.scala 634:33]
  wire  FP_multipliers_15_reset; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_15_io_in_a; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_15_io_in_b; // @[FPArithmetic.scala 634:33]
  wire [31:0] FP_multipliers_15_io_out_s; // @[FPArithmetic.scala 634:33]
  wire  FP_adders_0_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_0_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_0_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_0_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_0_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_1_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_1_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_1_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_1_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_1_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_2_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_2_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_2_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_2_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_2_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_3_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_3_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_3_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_3_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_3_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_4_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_4_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_4_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_4_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_4_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_5_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_5_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_5_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_5_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_5_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_6_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_6_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_6_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_6_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_6_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_7_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_7_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_7_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_7_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_7_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_8_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_8_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_8_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_8_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_8_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_9_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_9_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_9_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_9_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_9_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_10_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_10_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_10_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_10_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_10_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_11_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_11_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_11_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_11_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_11_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_12_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_12_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_12_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_12_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_12_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_13_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_13_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_13_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_13_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_13_io_out_s; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_14_clock; // @[FPArithmetic.scala 641:28]
  wire  FP_adders_14_reset; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_14_io_in_a; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_14_io_in_b; // @[FPArithmetic.scala 641:28]
  wire [31:0] FP_adders_14_io_out_s; // @[FPArithmetic.scala 641:28]
  FP_multiplier FP_multipliers_0 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_0_clock),
    .reset(FP_multipliers_0_reset),
    .io_in_a(FP_multipliers_0_io_in_a),
    .io_in_b(FP_multipliers_0_io_in_b),
    .io_out_s(FP_multipliers_0_io_out_s)
  );
  FP_multiplier FP_multipliers_1 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_1_clock),
    .reset(FP_multipliers_1_reset),
    .io_in_a(FP_multipliers_1_io_in_a),
    .io_in_b(FP_multipliers_1_io_in_b),
    .io_out_s(FP_multipliers_1_io_out_s)
  );
  FP_multiplier FP_multipliers_2 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_2_clock),
    .reset(FP_multipliers_2_reset),
    .io_in_a(FP_multipliers_2_io_in_a),
    .io_in_b(FP_multipliers_2_io_in_b),
    .io_out_s(FP_multipliers_2_io_out_s)
  );
  FP_multiplier FP_multipliers_3 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_3_clock),
    .reset(FP_multipliers_3_reset),
    .io_in_a(FP_multipliers_3_io_in_a),
    .io_in_b(FP_multipliers_3_io_in_b),
    .io_out_s(FP_multipliers_3_io_out_s)
  );
  FP_multiplier FP_multipliers_4 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_4_clock),
    .reset(FP_multipliers_4_reset),
    .io_in_a(FP_multipliers_4_io_in_a),
    .io_in_b(FP_multipliers_4_io_in_b),
    .io_out_s(FP_multipliers_4_io_out_s)
  );
  FP_multiplier FP_multipliers_5 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_5_clock),
    .reset(FP_multipliers_5_reset),
    .io_in_a(FP_multipliers_5_io_in_a),
    .io_in_b(FP_multipliers_5_io_in_b),
    .io_out_s(FP_multipliers_5_io_out_s)
  );
  FP_multiplier FP_multipliers_6 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_6_clock),
    .reset(FP_multipliers_6_reset),
    .io_in_a(FP_multipliers_6_io_in_a),
    .io_in_b(FP_multipliers_6_io_in_b),
    .io_out_s(FP_multipliers_6_io_out_s)
  );
  FP_multiplier FP_multipliers_7 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_7_clock),
    .reset(FP_multipliers_7_reset),
    .io_in_a(FP_multipliers_7_io_in_a),
    .io_in_b(FP_multipliers_7_io_in_b),
    .io_out_s(FP_multipliers_7_io_out_s)
  );
  FP_multiplier FP_multipliers_8 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_8_clock),
    .reset(FP_multipliers_8_reset),
    .io_in_a(FP_multipliers_8_io_in_a),
    .io_in_b(FP_multipliers_8_io_in_b),
    .io_out_s(FP_multipliers_8_io_out_s)
  );
  FP_multiplier FP_multipliers_9 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_9_clock),
    .reset(FP_multipliers_9_reset),
    .io_in_a(FP_multipliers_9_io_in_a),
    .io_in_b(FP_multipliers_9_io_in_b),
    .io_out_s(FP_multipliers_9_io_out_s)
  );
  FP_multiplier FP_multipliers_10 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_10_clock),
    .reset(FP_multipliers_10_reset),
    .io_in_a(FP_multipliers_10_io_in_a),
    .io_in_b(FP_multipliers_10_io_in_b),
    .io_out_s(FP_multipliers_10_io_out_s)
  );
  FP_multiplier FP_multipliers_11 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_11_clock),
    .reset(FP_multipliers_11_reset),
    .io_in_a(FP_multipliers_11_io_in_a),
    .io_in_b(FP_multipliers_11_io_in_b),
    .io_out_s(FP_multipliers_11_io_out_s)
  );
  FP_multiplier FP_multipliers_12 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_12_clock),
    .reset(FP_multipliers_12_reset),
    .io_in_a(FP_multipliers_12_io_in_a),
    .io_in_b(FP_multipliers_12_io_in_b),
    .io_out_s(FP_multipliers_12_io_out_s)
  );
  FP_multiplier FP_multipliers_13 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_13_clock),
    .reset(FP_multipliers_13_reset),
    .io_in_a(FP_multipliers_13_io_in_a),
    .io_in_b(FP_multipliers_13_io_in_b),
    .io_out_s(FP_multipliers_13_io_out_s)
  );
  FP_multiplier FP_multipliers_14 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_14_clock),
    .reset(FP_multipliers_14_reset),
    .io_in_a(FP_multipliers_14_io_in_a),
    .io_in_b(FP_multipliers_14_io_in_b),
    .io_out_s(FP_multipliers_14_io_out_s)
  );
  FP_multiplier FP_multipliers_15 ( // @[FPArithmetic.scala 634:33]
    .clock(FP_multipliers_15_clock),
    .reset(FP_multipliers_15_reset),
    .io_in_a(FP_multipliers_15_io_in_a),
    .io_in_b(FP_multipliers_15_io_in_b),
    .io_out_s(FP_multipliers_15_io_out_s)
  );
  FP_adder FP_adders_0 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_0_clock),
    .reset(FP_adders_0_reset),
    .io_in_a(FP_adders_0_io_in_a),
    .io_in_b(FP_adders_0_io_in_b),
    .io_out_s(FP_adders_0_io_out_s)
  );
  FP_adder FP_adders_1 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_1_clock),
    .reset(FP_adders_1_reset),
    .io_in_a(FP_adders_1_io_in_a),
    .io_in_b(FP_adders_1_io_in_b),
    .io_out_s(FP_adders_1_io_out_s)
  );
  FP_adder FP_adders_2 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_2_clock),
    .reset(FP_adders_2_reset),
    .io_in_a(FP_adders_2_io_in_a),
    .io_in_b(FP_adders_2_io_in_b),
    .io_out_s(FP_adders_2_io_out_s)
  );
  FP_adder FP_adders_3 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_3_clock),
    .reset(FP_adders_3_reset),
    .io_in_a(FP_adders_3_io_in_a),
    .io_in_b(FP_adders_3_io_in_b),
    .io_out_s(FP_adders_3_io_out_s)
  );
  FP_adder FP_adders_4 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_4_clock),
    .reset(FP_adders_4_reset),
    .io_in_a(FP_adders_4_io_in_a),
    .io_in_b(FP_adders_4_io_in_b),
    .io_out_s(FP_adders_4_io_out_s)
  );
  FP_adder FP_adders_5 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_5_clock),
    .reset(FP_adders_5_reset),
    .io_in_a(FP_adders_5_io_in_a),
    .io_in_b(FP_adders_5_io_in_b),
    .io_out_s(FP_adders_5_io_out_s)
  );
  FP_adder FP_adders_6 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_6_clock),
    .reset(FP_adders_6_reset),
    .io_in_a(FP_adders_6_io_in_a),
    .io_in_b(FP_adders_6_io_in_b),
    .io_out_s(FP_adders_6_io_out_s)
  );
  FP_adder FP_adders_7 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_7_clock),
    .reset(FP_adders_7_reset),
    .io_in_a(FP_adders_7_io_in_a),
    .io_in_b(FP_adders_7_io_in_b),
    .io_out_s(FP_adders_7_io_out_s)
  );
  FP_adder FP_adders_8 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_8_clock),
    .reset(FP_adders_8_reset),
    .io_in_a(FP_adders_8_io_in_a),
    .io_in_b(FP_adders_8_io_in_b),
    .io_out_s(FP_adders_8_io_out_s)
  );
  FP_adder FP_adders_9 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_9_clock),
    .reset(FP_adders_9_reset),
    .io_in_a(FP_adders_9_io_in_a),
    .io_in_b(FP_adders_9_io_in_b),
    .io_out_s(FP_adders_9_io_out_s)
  );
  FP_adder FP_adders_10 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_10_clock),
    .reset(FP_adders_10_reset),
    .io_in_a(FP_adders_10_io_in_a),
    .io_in_b(FP_adders_10_io_in_b),
    .io_out_s(FP_adders_10_io_out_s)
  );
  FP_adder FP_adders_11 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_11_clock),
    .reset(FP_adders_11_reset),
    .io_in_a(FP_adders_11_io_in_a),
    .io_in_b(FP_adders_11_io_in_b),
    .io_out_s(FP_adders_11_io_out_s)
  );
  FP_adder FP_adders_12 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_12_clock),
    .reset(FP_adders_12_reset),
    .io_in_a(FP_adders_12_io_in_a),
    .io_in_b(FP_adders_12_io_in_b),
    .io_out_s(FP_adders_12_io_out_s)
  );
  FP_adder FP_adders_13 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_13_clock),
    .reset(FP_adders_13_reset),
    .io_in_a(FP_adders_13_io_in_a),
    .io_in_b(FP_adders_13_io_in_b),
    .io_out_s(FP_adders_13_io_out_s)
  );
  FP_adder FP_adders_14 ( // @[FPArithmetic.scala 641:28]
    .clock(FP_adders_14_clock),
    .reset(FP_adders_14_reset),
    .io_in_a(FP_adders_14_io_in_a),
    .io_in_b(FP_adders_14_io_in_b),
    .io_out_s(FP_adders_14_io_out_s)
  );
  assign io_out_s = FP_adders_14_io_out_s; // @[FPArithmetic.scala 704:14]
  assign FP_multipliers_0_clock = clock;
  assign FP_multipliers_0_reset = reset;
  assign FP_multipliers_0_io_in_a = io_in_a_0; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_0_io_in_b = io_in_b_0; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_1_clock = clock;
  assign FP_multipliers_1_reset = reset;
  assign FP_multipliers_1_io_in_a = io_in_a_1; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_1_io_in_b = io_in_b_1; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_2_clock = clock;
  assign FP_multipliers_2_reset = reset;
  assign FP_multipliers_2_io_in_a = io_in_a_2; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_2_io_in_b = io_in_b_2; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_3_clock = clock;
  assign FP_multipliers_3_reset = reset;
  assign FP_multipliers_3_io_in_a = io_in_a_3; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_3_io_in_b = io_in_b_3; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_4_clock = clock;
  assign FP_multipliers_4_reset = reset;
  assign FP_multipliers_4_io_in_a = io_in_a_4; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_4_io_in_b = io_in_b_4; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_5_clock = clock;
  assign FP_multipliers_5_reset = reset;
  assign FP_multipliers_5_io_in_a = io_in_a_5; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_5_io_in_b = io_in_b_5; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_6_clock = clock;
  assign FP_multipliers_6_reset = reset;
  assign FP_multipliers_6_io_in_a = io_in_a_6; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_6_io_in_b = io_in_b_6; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_7_clock = clock;
  assign FP_multipliers_7_reset = reset;
  assign FP_multipliers_7_io_in_a = io_in_a_7; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_7_io_in_b = io_in_b_7; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_8_clock = clock;
  assign FP_multipliers_8_reset = reset;
  assign FP_multipliers_8_io_in_a = io_in_a_8; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_8_io_in_b = io_in_b_8; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_9_clock = clock;
  assign FP_multipliers_9_reset = reset;
  assign FP_multipliers_9_io_in_a = io_in_a_9; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_9_io_in_b = io_in_b_9; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_10_clock = clock;
  assign FP_multipliers_10_reset = reset;
  assign FP_multipliers_10_io_in_a = io_in_a_10; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_10_io_in_b = io_in_b_10; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_11_clock = clock;
  assign FP_multipliers_11_reset = reset;
  assign FP_multipliers_11_io_in_a = io_in_a_11; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_11_io_in_b = io_in_b_11; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_12_clock = clock;
  assign FP_multipliers_12_reset = reset;
  assign FP_multipliers_12_io_in_a = io_in_a_12; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_12_io_in_b = io_in_b_12; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_13_clock = clock;
  assign FP_multipliers_13_reset = reset;
  assign FP_multipliers_13_io_in_a = io_in_a_13; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_13_io_in_b = io_in_b_13; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_14_clock = clock;
  assign FP_multipliers_14_reset = reset;
  assign FP_multipliers_14_io_in_a = io_in_a_14; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_14_io_in_b = io_in_b_14; // @[FPArithmetic.scala 648:33]
  assign FP_multipliers_15_clock = clock;
  assign FP_multipliers_15_reset = reset;
  assign FP_multipliers_15_io_in_a = io_in_a_15; // @[FPArithmetic.scala 647:33]
  assign FP_multipliers_15_io_in_b = io_in_b_15; // @[FPArithmetic.scala 648:33]
  assign FP_adders_0_clock = clock;
  assign FP_adders_0_reset = reset;
  assign FP_adders_0_io_in_a = FP_multipliers_0_io_out_s; // @[FPArithmetic.scala 666:41]
  assign FP_adders_0_io_in_b = FP_multipliers_1_io_out_s; // @[FPArithmetic.scala 667:41]
  assign FP_adders_1_clock = clock;
  assign FP_adders_1_reset = reset;
  assign FP_adders_1_io_in_a = FP_multipliers_2_io_out_s; // @[FPArithmetic.scala 666:41]
  assign FP_adders_1_io_in_b = FP_multipliers_3_io_out_s; // @[FPArithmetic.scala 667:41]
  assign FP_adders_2_clock = clock;
  assign FP_adders_2_reset = reset;
  assign FP_adders_2_io_in_a = FP_multipliers_4_io_out_s; // @[FPArithmetic.scala 666:41]
  assign FP_adders_2_io_in_b = FP_multipliers_5_io_out_s; // @[FPArithmetic.scala 667:41]
  assign FP_adders_3_clock = clock;
  assign FP_adders_3_reset = reset;
  assign FP_adders_3_io_in_a = FP_multipliers_6_io_out_s; // @[FPArithmetic.scala 666:41]
  assign FP_adders_3_io_in_b = FP_multipliers_7_io_out_s; // @[FPArithmetic.scala 667:41]
  assign FP_adders_4_clock = clock;
  assign FP_adders_4_reset = reset;
  assign FP_adders_4_io_in_a = FP_multipliers_8_io_out_s; // @[FPArithmetic.scala 666:41]
  assign FP_adders_4_io_in_b = FP_multipliers_9_io_out_s; // @[FPArithmetic.scala 667:41]
  assign FP_adders_5_clock = clock;
  assign FP_adders_5_reset = reset;
  assign FP_adders_5_io_in_a = FP_multipliers_10_io_out_s; // @[FPArithmetic.scala 666:41]
  assign FP_adders_5_io_in_b = FP_multipliers_11_io_out_s; // @[FPArithmetic.scala 667:41]
  assign FP_adders_6_clock = clock;
  assign FP_adders_6_reset = reset;
  assign FP_adders_6_io_in_a = FP_multipliers_12_io_out_s; // @[FPArithmetic.scala 666:41]
  assign FP_adders_6_io_in_b = FP_multipliers_13_io_out_s; // @[FPArithmetic.scala 667:41]
  assign FP_adders_7_clock = clock;
  assign FP_adders_7_reset = reset;
  assign FP_adders_7_io_in_a = FP_multipliers_14_io_out_s; // @[FPArithmetic.scala 666:41]
  assign FP_adders_7_io_in_b = FP_multipliers_15_io_out_s; // @[FPArithmetic.scala 667:41]
  assign FP_adders_8_clock = clock;
  assign FP_adders_8_reset = reset;
  assign FP_adders_8_io_in_a = FP_adders_0_io_out_s; // @[FPArithmetic.scala 692:43]
  assign FP_adders_8_io_in_b = FP_adders_1_io_out_s; // @[FPArithmetic.scala 693:43]
  assign FP_adders_9_clock = clock;
  assign FP_adders_9_reset = reset;
  assign FP_adders_9_io_in_a = FP_adders_2_io_out_s; // @[FPArithmetic.scala 692:43]
  assign FP_adders_9_io_in_b = FP_adders_3_io_out_s; // @[FPArithmetic.scala 693:43]
  assign FP_adders_10_clock = clock;
  assign FP_adders_10_reset = reset;
  assign FP_adders_10_io_in_a = FP_adders_4_io_out_s; // @[FPArithmetic.scala 692:43]
  assign FP_adders_10_io_in_b = FP_adders_5_io_out_s; // @[FPArithmetic.scala 693:43]
  assign FP_adders_11_clock = clock;
  assign FP_adders_11_reset = reset;
  assign FP_adders_11_io_in_a = FP_adders_6_io_out_s; // @[FPArithmetic.scala 692:43]
  assign FP_adders_11_io_in_b = FP_adders_7_io_out_s; // @[FPArithmetic.scala 693:43]
  assign FP_adders_12_clock = clock;
  assign FP_adders_12_reset = reset;
  assign FP_adders_12_io_in_a = FP_adders_8_io_out_s; // @[FPArithmetic.scala 692:43]
  assign FP_adders_12_io_in_b = FP_adders_9_io_out_s; // @[FPArithmetic.scala 693:43]
  assign FP_adders_13_clock = clock;
  assign FP_adders_13_reset = reset;
  assign FP_adders_13_io_in_a = FP_adders_10_io_out_s; // @[FPArithmetic.scala 692:43]
  assign FP_adders_13_io_in_b = FP_adders_11_io_out_s; // @[FPArithmetic.scala 693:43]
  assign FP_adders_14_clock = clock;
  assign FP_adders_14_reset = reset;
  assign FP_adders_14_io_in_a = FP_adders_12_io_out_s; // @[FPArithmetic.scala 692:43]
  assign FP_adders_14_io_in_b = FP_adders_13_io_out_s; // @[FPArithmetic.scala 693:43]
endmodule
module Mux4(
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [1:0]  io_sel,
  output [31:0] io_out
);
  wire [31:0] _io_out_T_2 = io_sel[0] ? io_in_3 : io_in_2; // @[FPArithmetic.scala 834:33]
  wire [31:0] _io_out_T_4 = io_sel[0] ? io_in_1 : io_in_0; // @[FPArithmetic.scala 834:69]
  assign io_out = io_sel[1] ? _io_out_T_2 : _io_out_T_4; // @[FPArithmetic.scala 834:18]
endmodule
module Mux2(
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input         io_sel,
  output [31:0] io_out
);
  assign io_out = io_sel ? io_in_1 : io_in_0; // @[FPArithmetic.scala 844:18]
endmodule
module Demux1_4(
  input         clock,
  input  [31:0] io_in,
  input  [1:0]  io_sel,
  input         io_enable_0,
  input         io_enable_1,
  input         io_enable_2,
  input         io_enable_3,
  output [31:0] io_out_0,
  output [31:0] io_out_1,
  output [31:0] io_out_2,
  output [31:0] io_out_3
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] enableReg_0; // @[FPArithmetic.scala 974:24]
  reg [31:0] enableReg_1; // @[FPArithmetic.scala 974:24]
  reg [31:0] enableReg_2; // @[FPArithmetic.scala 974:24]
  reg [31:0] enableReg_3; // @[FPArithmetic.scala 974:24]
  assign io_out_0 = enableReg_0; // @[FPArithmetic.scala 1004:17]
  assign io_out_1 = enableReg_1; // @[FPArithmetic.scala 1004:17]
  assign io_out_2 = enableReg_2; // @[FPArithmetic.scala 1004:17]
  assign io_out_3 = enableReg_3; // @[FPArithmetic.scala 1004:17]
  always @(posedge clock) begin
    if (io_enable_0) begin // @[FPArithmetic.scala 990:33]
      if (io_sel == 2'h0) begin // @[FPArithmetic.scala 980:27]
        enableReg_0 <= io_in; // @[FPArithmetic.scala 981:12]
      end else begin
        enableReg_0 <= 32'h0; // @[FPArithmetic.scala 977:12]
      end
    end
    if (io_enable_1) begin // @[FPArithmetic.scala 993:33]
      if (io_sel == 2'h0) begin // @[FPArithmetic.scala 980:27]
        enableReg_1 <= 32'h0; // @[FPArithmetic.scala 977:12]
      end else if (io_sel == 2'h1) begin // @[FPArithmetic.scala 982:33]
        enableReg_1 <= io_in; // @[FPArithmetic.scala 983:12]
      end else begin
        enableReg_1 <= 32'h0; // @[FPArithmetic.scala 977:12]
      end
    end
    if (io_enable_2) begin // @[FPArithmetic.scala 996:33]
      if (io_sel == 2'h0) begin // @[FPArithmetic.scala 980:27]
        enableReg_2 <= 32'h0; // @[FPArithmetic.scala 977:12]
      end else if (io_sel == 2'h1) begin // @[FPArithmetic.scala 982:33]
        enableReg_2 <= 32'h0; // @[FPArithmetic.scala 977:12]
      end else if (io_sel == 2'h2) begin // @[FPArithmetic.scala 984:33]
        enableReg_2 <= io_in; // @[FPArithmetic.scala 985:12]
      end else begin
        enableReg_2 <= 32'h0; // @[FPArithmetic.scala 977:12]
      end
    end
    if (io_enable_3) begin // @[FPArithmetic.scala 999:33]
      if (io_sel == 2'h0) begin // @[FPArithmetic.scala 980:27]
        enableReg_3 <= 32'h0; // @[FPArithmetic.scala 977:12]
      end else if (io_sel == 2'h1) begin // @[FPArithmetic.scala 982:33]
        enableReg_3 <= 32'h0; // @[FPArithmetic.scala 977:12]
      end else if (io_sel == 2'h2) begin // @[FPArithmetic.scala 984:33]
        enableReg_3 <= 32'h0; // @[FPArithmetic.scala 977:12]
      end else begin
        enableReg_3 <= io_in; // @[FPArithmetic.scala 987:12]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enableReg_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  enableReg_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  enableReg_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  enableReg_3 = _RAND_3[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Demux1_2(
  input         clock,
  input  [31:0] io_in,
  input         io_sel,
  input         io_enable_0,
  input         io_enable_1,
  output [31:0] io_out_0,
  output [31:0] io_out_1
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] enableReg_0; // @[FPArithmetic.scala 1015:24]
  reg [31:0] enableReg_1; // @[FPArithmetic.scala 1015:24]
  assign io_out_0 = enableReg_0; // @[FPArithmetic.scala 1035:17]
  assign io_out_1 = enableReg_1; // @[FPArithmetic.scala 1035:17]
  always @(posedge clock) begin
    if (io_enable_0) begin // @[FPArithmetic.scala 1027:33]
      if (~io_sel) begin // @[FPArithmetic.scala 1021:27]
        enableReg_0 <= io_in; // @[FPArithmetic.scala 1022:12]
      end else begin
        enableReg_0 <= 32'h0; // @[FPArithmetic.scala 1018:12]
      end
    end
    if (io_enable_1) begin // @[FPArithmetic.scala 1030:33]
      if (~io_sel) begin // @[FPArithmetic.scala 1021:27]
        enableReg_1 <= 32'h0; // @[FPArithmetic.scala 1018:12]
      end else begin
        enableReg_1 <= io_in; // @[FPArithmetic.scala 1024:12]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  enableReg_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  enableReg_1 = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FC(
  input         clock,
  input         reset,
  input  [31:0] io_matB_0,
  input  [31:0] io_matB_1,
  input  [31:0] io_matB_2,
  input  [31:0] io_matB_3,
  input  [31:0] io_matB_4,
  input  [31:0] io_matB_5,
  input  [31:0] io_matB_6,
  input  [31:0] io_matB_7,
  input  [31:0] io_matB_8,
  input  [31:0] io_matB_9,
  input  [31:0] io_matB_10,
  input  [31:0] io_matB_11,
  input  [31:0] io_matB_12,
  input  [31:0] io_matB_13,
  input  [31:0] io_matB_14,
  input  [31:0] io_matB_15,
  input  [1:0]  io_MuxSel,
  input         io_DemuxEn_0,
  input         io_DemuxEn_1,
  input         io_DemuxEn_2,
  input         io_DemuxEn_3,
  output [31:0] io_fC_out_0,
  output [31:0] io_fC_out_1,
  output [31:0] io_fC_out_2,
  output [31:0] io_fC_out_3,
  output [31:0] io_fC_out_4,
  output [31:0] io_fC_out_5,
  output [31:0] io_fC_out_6,
  output [31:0] io_fC_out_7,
  output [31:0] io_fC_out_8,
  output [31:0] io_fC_out_9
);
  wire  mul1_0_clock; // @[FCLayer.scala 31:24]
  wire  mul1_0_reset; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_a_0; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_a_1; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_a_2; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_a_3; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_a_4; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_a_5; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_a_6; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_a_7; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_a_8; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_a_9; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_a_10; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_a_11; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_a_12; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_a_13; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_a_14; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_a_15; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_b_0; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_b_1; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_b_2; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_b_3; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_b_4; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_b_5; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_b_6; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_b_7; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_b_8; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_b_9; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_b_10; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_b_11; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_b_12; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_b_13; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_b_14; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_in_b_15; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_0_io_out_s; // @[FCLayer.scala 31:24]
  wire  mul1_1_clock; // @[FCLayer.scala 31:24]
  wire  mul1_1_reset; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_a_0; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_a_1; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_a_2; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_a_3; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_a_4; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_a_5; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_a_6; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_a_7; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_a_8; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_a_9; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_a_10; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_a_11; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_a_12; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_a_13; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_a_14; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_a_15; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_b_0; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_b_1; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_b_2; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_b_3; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_b_4; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_b_5; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_b_6; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_b_7; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_b_8; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_b_9; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_b_10; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_b_11; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_b_12; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_b_13; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_b_14; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_in_b_15; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_1_io_out_s; // @[FCLayer.scala 31:24]
  wire  mul1_2_clock; // @[FCLayer.scala 31:24]
  wire  mul1_2_reset; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_a_0; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_a_1; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_a_2; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_a_3; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_a_4; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_a_5; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_a_6; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_a_7; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_a_8; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_a_9; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_a_10; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_a_11; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_a_12; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_a_13; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_a_14; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_a_15; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_b_0; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_b_1; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_b_2; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_b_3; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_b_4; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_b_5; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_b_6; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_b_7; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_b_8; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_b_9; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_b_10; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_b_11; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_b_12; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_b_13; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_b_14; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_in_b_15; // @[FCLayer.scala 31:24]
  wire [31:0] mul1_2_io_out_s; // @[FCLayer.scala 31:24]
  wire  sum_0_clock; // @[FCLayer.scala 37:25]
  wire  sum_0_reset; // @[FCLayer.scala 37:25]
  wire [31:0] sum_0_io_in_a; // @[FCLayer.scala 37:25]
  wire [31:0] sum_0_io_in_b; // @[FCLayer.scala 37:25]
  wire [31:0] sum_0_io_out_s; // @[FCLayer.scala 37:25]
  wire  sum_1_clock; // @[FCLayer.scala 37:25]
  wire  sum_1_reset; // @[FCLayer.scala 37:25]
  wire [31:0] sum_1_io_in_a; // @[FCLayer.scala 37:25]
  wire [31:0] sum_1_io_in_b; // @[FCLayer.scala 37:25]
  wire [31:0] sum_1_io_out_s; // @[FCLayer.scala 37:25]
  wire  sum_2_clock; // @[FCLayer.scala 37:25]
  wire  sum_2_reset; // @[FCLayer.scala 37:25]
  wire [31:0] sum_2_io_in_a; // @[FCLayer.scala 37:25]
  wire [31:0] sum_2_io_in_b; // @[FCLayer.scala 37:25]
  wire [31:0] sum_2_io_out_s; // @[FCLayer.scala 37:25]
  wire [31:0] Muxinst1_0_io_in_0; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_0_io_in_1; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_0_io_in_2; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_0_io_in_3; // @[FCLayer.scala 43:23]
  wire [1:0] Muxinst1_0_io_sel; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_0_io_out; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_1_io_in_0; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_1_io_in_1; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_1_io_in_2; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_1_io_in_3; // @[FCLayer.scala 43:23]
  wire [1:0] Muxinst1_1_io_sel; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_1_io_out; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_2_io_in_0; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_2_io_in_1; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_2_io_in_2; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_2_io_in_3; // @[FCLayer.scala 43:23]
  wire [1:0] Muxinst1_2_io_sel; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_2_io_out; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_3_io_in_0; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_3_io_in_1; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_3_io_in_2; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_3_io_in_3; // @[FCLayer.scala 43:23]
  wire [1:0] Muxinst1_3_io_sel; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_3_io_out; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_4_io_in_0; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_4_io_in_1; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_4_io_in_2; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_4_io_in_3; // @[FCLayer.scala 43:23]
  wire [1:0] Muxinst1_4_io_sel; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_4_io_out; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_5_io_in_0; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_5_io_in_1; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_5_io_in_2; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_5_io_in_3; // @[FCLayer.scala 43:23]
  wire [1:0] Muxinst1_5_io_sel; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_5_io_out; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_6_io_in_0; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_6_io_in_1; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_6_io_in_2; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_6_io_in_3; // @[FCLayer.scala 43:23]
  wire [1:0] Muxinst1_6_io_sel; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_6_io_out; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_7_io_in_0; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_7_io_in_1; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_7_io_in_2; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_7_io_in_3; // @[FCLayer.scala 43:23]
  wire [1:0] Muxinst1_7_io_sel; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_7_io_out; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_8_io_in_0; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_8_io_in_1; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_8_io_in_2; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_8_io_in_3; // @[FCLayer.scala 43:23]
  wire [1:0] Muxinst1_8_io_sel; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_8_io_out; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_9_io_in_0; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_9_io_in_1; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_9_io_in_2; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_9_io_in_3; // @[FCLayer.scala 43:23]
  wire [1:0] Muxinst1_9_io_sel; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_9_io_out; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_10_io_in_0; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_10_io_in_1; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_10_io_in_2; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_10_io_in_3; // @[FCLayer.scala 43:23]
  wire [1:0] Muxinst1_10_io_sel; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_10_io_out; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_11_io_in_0; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_11_io_in_1; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_11_io_in_2; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_11_io_in_3; // @[FCLayer.scala 43:23]
  wire [1:0] Muxinst1_11_io_sel; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_11_io_out; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_12_io_in_0; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_12_io_in_1; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_12_io_in_2; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_12_io_in_3; // @[FCLayer.scala 43:23]
  wire [1:0] Muxinst1_12_io_sel; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_12_io_out; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_13_io_in_0; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_13_io_in_1; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_13_io_in_2; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_13_io_in_3; // @[FCLayer.scala 43:23]
  wire [1:0] Muxinst1_13_io_sel; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_13_io_out; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_14_io_in_0; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_14_io_in_1; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_14_io_in_2; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_14_io_in_3; // @[FCLayer.scala 43:23]
  wire [1:0] Muxinst1_14_io_sel; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_14_io_out; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_15_io_in_0; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_15_io_in_1; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_15_io_in_2; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_15_io_in_3; // @[FCLayer.scala 43:23]
  wire [1:0] Muxinst1_15_io_sel; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst1_15_io_out; // @[FCLayer.scala 43:23]
  wire [31:0] Muxinst2_0_io_in_0; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_0_io_in_1; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_0_io_in_2; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_0_io_in_3; // @[FCLayer.scala 49:23]
  wire [1:0] Muxinst2_0_io_sel; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_0_io_out; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_1_io_in_0; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_1_io_in_1; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_1_io_in_2; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_1_io_in_3; // @[FCLayer.scala 49:23]
  wire [1:0] Muxinst2_1_io_sel; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_1_io_out; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_2_io_in_0; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_2_io_in_1; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_2_io_in_2; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_2_io_in_3; // @[FCLayer.scala 49:23]
  wire [1:0] Muxinst2_2_io_sel; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_2_io_out; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_3_io_in_0; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_3_io_in_1; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_3_io_in_2; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_3_io_in_3; // @[FCLayer.scala 49:23]
  wire [1:0] Muxinst2_3_io_sel; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_3_io_out; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_4_io_in_0; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_4_io_in_1; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_4_io_in_2; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_4_io_in_3; // @[FCLayer.scala 49:23]
  wire [1:0] Muxinst2_4_io_sel; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_4_io_out; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_5_io_in_0; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_5_io_in_1; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_5_io_in_2; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_5_io_in_3; // @[FCLayer.scala 49:23]
  wire [1:0] Muxinst2_5_io_sel; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_5_io_out; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_6_io_in_0; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_6_io_in_1; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_6_io_in_2; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_6_io_in_3; // @[FCLayer.scala 49:23]
  wire [1:0] Muxinst2_6_io_sel; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_6_io_out; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_7_io_in_0; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_7_io_in_1; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_7_io_in_2; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_7_io_in_3; // @[FCLayer.scala 49:23]
  wire [1:0] Muxinst2_7_io_sel; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_7_io_out; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_8_io_in_0; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_8_io_in_1; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_8_io_in_2; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_8_io_in_3; // @[FCLayer.scala 49:23]
  wire [1:0] Muxinst2_8_io_sel; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_8_io_out; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_9_io_in_0; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_9_io_in_1; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_9_io_in_2; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_9_io_in_3; // @[FCLayer.scala 49:23]
  wire [1:0] Muxinst2_9_io_sel; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_9_io_out; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_10_io_in_0; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_10_io_in_1; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_10_io_in_2; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_10_io_in_3; // @[FCLayer.scala 49:23]
  wire [1:0] Muxinst2_10_io_sel; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_10_io_out; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_11_io_in_0; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_11_io_in_1; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_11_io_in_2; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_11_io_in_3; // @[FCLayer.scala 49:23]
  wire [1:0] Muxinst2_11_io_sel; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_11_io_out; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_12_io_in_0; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_12_io_in_1; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_12_io_in_2; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_12_io_in_3; // @[FCLayer.scala 49:23]
  wire [1:0] Muxinst2_12_io_sel; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_12_io_out; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_13_io_in_0; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_13_io_in_1; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_13_io_in_2; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_13_io_in_3; // @[FCLayer.scala 49:23]
  wire [1:0] Muxinst2_13_io_sel; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_13_io_out; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_14_io_in_0; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_14_io_in_1; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_14_io_in_2; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_14_io_in_3; // @[FCLayer.scala 49:23]
  wire [1:0] Muxinst2_14_io_sel; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_14_io_out; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_15_io_in_0; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_15_io_in_1; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_15_io_in_2; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_15_io_in_3; // @[FCLayer.scala 49:23]
  wire [1:0] Muxinst2_15_io_sel; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst2_15_io_out; // @[FCLayer.scala 49:23]
  wire [31:0] Muxinst3_0_io_in_0; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_0_io_in_1; // @[FCLayer.scala 55:23]
  wire  Muxinst3_0_io_sel; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_0_io_out; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_1_io_in_0; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_1_io_in_1; // @[FCLayer.scala 55:23]
  wire  Muxinst3_1_io_sel; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_1_io_out; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_2_io_in_0; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_2_io_in_1; // @[FCLayer.scala 55:23]
  wire  Muxinst3_2_io_sel; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_2_io_out; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_3_io_in_0; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_3_io_in_1; // @[FCLayer.scala 55:23]
  wire  Muxinst3_3_io_sel; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_3_io_out; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_4_io_in_0; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_4_io_in_1; // @[FCLayer.scala 55:23]
  wire  Muxinst3_4_io_sel; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_4_io_out; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_5_io_in_0; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_5_io_in_1; // @[FCLayer.scala 55:23]
  wire  Muxinst3_5_io_sel; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_5_io_out; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_6_io_in_0; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_6_io_in_1; // @[FCLayer.scala 55:23]
  wire  Muxinst3_6_io_sel; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_6_io_out; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_7_io_in_0; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_7_io_in_1; // @[FCLayer.scala 55:23]
  wire  Muxinst3_7_io_sel; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_7_io_out; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_8_io_in_0; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_8_io_in_1; // @[FCLayer.scala 55:23]
  wire  Muxinst3_8_io_sel; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_8_io_out; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_9_io_in_0; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_9_io_in_1; // @[FCLayer.scala 55:23]
  wire  Muxinst3_9_io_sel; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_9_io_out; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_10_io_in_0; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_10_io_in_1; // @[FCLayer.scala 55:23]
  wire  Muxinst3_10_io_sel; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_10_io_out; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_11_io_in_0; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_11_io_in_1; // @[FCLayer.scala 55:23]
  wire  Muxinst3_11_io_sel; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_11_io_out; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_12_io_in_0; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_12_io_in_1; // @[FCLayer.scala 55:23]
  wire  Muxinst3_12_io_sel; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_12_io_out; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_13_io_in_0; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_13_io_in_1; // @[FCLayer.scala 55:23]
  wire  Muxinst3_13_io_sel; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_13_io_out; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_14_io_in_0; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_14_io_in_1; // @[FCLayer.scala 55:23]
  wire  Muxinst3_14_io_sel; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_14_io_out; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_15_io_in_0; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_15_io_in_1; // @[FCLayer.scala 55:23]
  wire  Muxinst3_15_io_sel; // @[FCLayer.scala 55:23]
  wire [31:0] Muxinst3_15_io_out; // @[FCLayer.scala 55:23]
  wire  DemuxInst_1_clock; // @[FCLayer.scala 60:29]
  wire [31:0] DemuxInst_1_io_in; // @[FCLayer.scala 60:29]
  wire [1:0] DemuxInst_1_io_sel; // @[FCLayer.scala 60:29]
  wire  DemuxInst_1_io_enable_0; // @[FCLayer.scala 60:29]
  wire  DemuxInst_1_io_enable_1; // @[FCLayer.scala 60:29]
  wire  DemuxInst_1_io_enable_2; // @[FCLayer.scala 60:29]
  wire  DemuxInst_1_io_enable_3; // @[FCLayer.scala 60:29]
  wire [31:0] DemuxInst_1_io_out_0; // @[FCLayer.scala 60:29]
  wire [31:0] DemuxInst_1_io_out_1; // @[FCLayer.scala 60:29]
  wire [31:0] DemuxInst_1_io_out_2; // @[FCLayer.scala 60:29]
  wire [31:0] DemuxInst_1_io_out_3; // @[FCLayer.scala 60:29]
  wire  DemuxInst_2_clock; // @[FCLayer.scala 61:29]
  wire [31:0] DemuxInst_2_io_in; // @[FCLayer.scala 61:29]
  wire [1:0] DemuxInst_2_io_sel; // @[FCLayer.scala 61:29]
  wire  DemuxInst_2_io_enable_0; // @[FCLayer.scala 61:29]
  wire  DemuxInst_2_io_enable_1; // @[FCLayer.scala 61:29]
  wire  DemuxInst_2_io_enable_2; // @[FCLayer.scala 61:29]
  wire  DemuxInst_2_io_enable_3; // @[FCLayer.scala 61:29]
  wire [31:0] DemuxInst_2_io_out_0; // @[FCLayer.scala 61:29]
  wire [31:0] DemuxInst_2_io_out_1; // @[FCLayer.scala 61:29]
  wire [31:0] DemuxInst_2_io_out_2; // @[FCLayer.scala 61:29]
  wire [31:0] DemuxInst_2_io_out_3; // @[FCLayer.scala 61:29]
  wire  DemuxInst_3_clock; // @[FCLayer.scala 62:29]
  wire [31:0] DemuxInst_3_io_in; // @[FCLayer.scala 62:29]
  wire  DemuxInst_3_io_sel; // @[FCLayer.scala 62:29]
  wire  DemuxInst_3_io_enable_0; // @[FCLayer.scala 62:29]
  wire  DemuxInst_3_io_enable_1; // @[FCLayer.scala 62:29]
  wire [31:0] DemuxInst_3_io_out_0; // @[FCLayer.scala 62:29]
  wire [31:0] DemuxInst_3_io_out_1; // @[FCLayer.scala 62:29]
  wire [31:0] MuxInst1_io_in_0; // @[FCLayer.scala 104:26]
  wire [31:0] MuxInst1_io_in_1; // @[FCLayer.scala 104:26]
  wire [31:0] MuxInst1_io_in_2; // @[FCLayer.scala 104:26]
  wire [31:0] MuxInst1_io_in_3; // @[FCLayer.scala 104:26]
  wire [1:0] MuxInst1_io_sel; // @[FCLayer.scala 104:26]
  wire [31:0] MuxInst1_io_out; // @[FCLayer.scala 104:26]
  wire [31:0] MuxInst2_io_in_0; // @[FCLayer.scala 105:26]
  wire [31:0] MuxInst2_io_in_1; // @[FCLayer.scala 105:26]
  wire [31:0] MuxInst2_io_in_2; // @[FCLayer.scala 105:26]
  wire [31:0] MuxInst2_io_in_3; // @[FCLayer.scala 105:26]
  wire [1:0] MuxInst2_io_sel; // @[FCLayer.scala 105:26]
  wire [31:0] MuxInst2_io_out; // @[FCLayer.scala 105:26]
  wire [31:0] MuxInst3_io_in_0; // @[FCLayer.scala 106:26]
  wire [31:0] MuxInst3_io_in_1; // @[FCLayer.scala 106:26]
  wire  MuxInst3_io_sel; // @[FCLayer.scala 106:26]
  wire [31:0] MuxInst3_io_out; // @[FCLayer.scala 106:26]
  FP_multiply_sum_1 mul1_0 ( // @[FCLayer.scala 31:24]
    .clock(mul1_0_clock),
    .reset(mul1_0_reset),
    .io_in_a_0(mul1_0_io_in_a_0),
    .io_in_a_1(mul1_0_io_in_a_1),
    .io_in_a_2(mul1_0_io_in_a_2),
    .io_in_a_3(mul1_0_io_in_a_3),
    .io_in_a_4(mul1_0_io_in_a_4),
    .io_in_a_5(mul1_0_io_in_a_5),
    .io_in_a_6(mul1_0_io_in_a_6),
    .io_in_a_7(mul1_0_io_in_a_7),
    .io_in_a_8(mul1_0_io_in_a_8),
    .io_in_a_9(mul1_0_io_in_a_9),
    .io_in_a_10(mul1_0_io_in_a_10),
    .io_in_a_11(mul1_0_io_in_a_11),
    .io_in_a_12(mul1_0_io_in_a_12),
    .io_in_a_13(mul1_0_io_in_a_13),
    .io_in_a_14(mul1_0_io_in_a_14),
    .io_in_a_15(mul1_0_io_in_a_15),
    .io_in_b_0(mul1_0_io_in_b_0),
    .io_in_b_1(mul1_0_io_in_b_1),
    .io_in_b_2(mul1_0_io_in_b_2),
    .io_in_b_3(mul1_0_io_in_b_3),
    .io_in_b_4(mul1_0_io_in_b_4),
    .io_in_b_5(mul1_0_io_in_b_5),
    .io_in_b_6(mul1_0_io_in_b_6),
    .io_in_b_7(mul1_0_io_in_b_7),
    .io_in_b_8(mul1_0_io_in_b_8),
    .io_in_b_9(mul1_0_io_in_b_9),
    .io_in_b_10(mul1_0_io_in_b_10),
    .io_in_b_11(mul1_0_io_in_b_11),
    .io_in_b_12(mul1_0_io_in_b_12),
    .io_in_b_13(mul1_0_io_in_b_13),
    .io_in_b_14(mul1_0_io_in_b_14),
    .io_in_b_15(mul1_0_io_in_b_15),
    .io_out_s(mul1_0_io_out_s)
  );
  FP_multiply_sum_1 mul1_1 ( // @[FCLayer.scala 31:24]
    .clock(mul1_1_clock),
    .reset(mul1_1_reset),
    .io_in_a_0(mul1_1_io_in_a_0),
    .io_in_a_1(mul1_1_io_in_a_1),
    .io_in_a_2(mul1_1_io_in_a_2),
    .io_in_a_3(mul1_1_io_in_a_3),
    .io_in_a_4(mul1_1_io_in_a_4),
    .io_in_a_5(mul1_1_io_in_a_5),
    .io_in_a_6(mul1_1_io_in_a_6),
    .io_in_a_7(mul1_1_io_in_a_7),
    .io_in_a_8(mul1_1_io_in_a_8),
    .io_in_a_9(mul1_1_io_in_a_9),
    .io_in_a_10(mul1_1_io_in_a_10),
    .io_in_a_11(mul1_1_io_in_a_11),
    .io_in_a_12(mul1_1_io_in_a_12),
    .io_in_a_13(mul1_1_io_in_a_13),
    .io_in_a_14(mul1_1_io_in_a_14),
    .io_in_a_15(mul1_1_io_in_a_15),
    .io_in_b_0(mul1_1_io_in_b_0),
    .io_in_b_1(mul1_1_io_in_b_1),
    .io_in_b_2(mul1_1_io_in_b_2),
    .io_in_b_3(mul1_1_io_in_b_3),
    .io_in_b_4(mul1_1_io_in_b_4),
    .io_in_b_5(mul1_1_io_in_b_5),
    .io_in_b_6(mul1_1_io_in_b_6),
    .io_in_b_7(mul1_1_io_in_b_7),
    .io_in_b_8(mul1_1_io_in_b_8),
    .io_in_b_9(mul1_1_io_in_b_9),
    .io_in_b_10(mul1_1_io_in_b_10),
    .io_in_b_11(mul1_1_io_in_b_11),
    .io_in_b_12(mul1_1_io_in_b_12),
    .io_in_b_13(mul1_1_io_in_b_13),
    .io_in_b_14(mul1_1_io_in_b_14),
    .io_in_b_15(mul1_1_io_in_b_15),
    .io_out_s(mul1_1_io_out_s)
  );
  FP_multiply_sum_1 mul1_2 ( // @[FCLayer.scala 31:24]
    .clock(mul1_2_clock),
    .reset(mul1_2_reset),
    .io_in_a_0(mul1_2_io_in_a_0),
    .io_in_a_1(mul1_2_io_in_a_1),
    .io_in_a_2(mul1_2_io_in_a_2),
    .io_in_a_3(mul1_2_io_in_a_3),
    .io_in_a_4(mul1_2_io_in_a_4),
    .io_in_a_5(mul1_2_io_in_a_5),
    .io_in_a_6(mul1_2_io_in_a_6),
    .io_in_a_7(mul1_2_io_in_a_7),
    .io_in_a_8(mul1_2_io_in_a_8),
    .io_in_a_9(mul1_2_io_in_a_9),
    .io_in_a_10(mul1_2_io_in_a_10),
    .io_in_a_11(mul1_2_io_in_a_11),
    .io_in_a_12(mul1_2_io_in_a_12),
    .io_in_a_13(mul1_2_io_in_a_13),
    .io_in_a_14(mul1_2_io_in_a_14),
    .io_in_a_15(mul1_2_io_in_a_15),
    .io_in_b_0(mul1_2_io_in_b_0),
    .io_in_b_1(mul1_2_io_in_b_1),
    .io_in_b_2(mul1_2_io_in_b_2),
    .io_in_b_3(mul1_2_io_in_b_3),
    .io_in_b_4(mul1_2_io_in_b_4),
    .io_in_b_5(mul1_2_io_in_b_5),
    .io_in_b_6(mul1_2_io_in_b_6),
    .io_in_b_7(mul1_2_io_in_b_7),
    .io_in_b_8(mul1_2_io_in_b_8),
    .io_in_b_9(mul1_2_io_in_b_9),
    .io_in_b_10(mul1_2_io_in_b_10),
    .io_in_b_11(mul1_2_io_in_b_11),
    .io_in_b_12(mul1_2_io_in_b_12),
    .io_in_b_13(mul1_2_io_in_b_13),
    .io_in_b_14(mul1_2_io_in_b_14),
    .io_in_b_15(mul1_2_io_in_b_15),
    .io_out_s(mul1_2_io_out_s)
  );
  FP_adder sum_0 ( // @[FCLayer.scala 37:25]
    .clock(sum_0_clock),
    .reset(sum_0_reset),
    .io_in_a(sum_0_io_in_a),
    .io_in_b(sum_0_io_in_b),
    .io_out_s(sum_0_io_out_s)
  );
  FP_adder sum_1 ( // @[FCLayer.scala 37:25]
    .clock(sum_1_clock),
    .reset(sum_1_reset),
    .io_in_a(sum_1_io_in_a),
    .io_in_b(sum_1_io_in_b),
    .io_out_s(sum_1_io_out_s)
  );
  FP_adder sum_2 ( // @[FCLayer.scala 37:25]
    .clock(sum_2_clock),
    .reset(sum_2_reset),
    .io_in_a(sum_2_io_in_a),
    .io_in_b(sum_2_io_in_b),
    .io_out_s(sum_2_io_out_s)
  );
  Mux4 Muxinst1_0 ( // @[FCLayer.scala 43:23]
    .io_in_0(Muxinst1_0_io_in_0),
    .io_in_1(Muxinst1_0_io_in_1),
    .io_in_2(Muxinst1_0_io_in_2),
    .io_in_3(Muxinst1_0_io_in_3),
    .io_sel(Muxinst1_0_io_sel),
    .io_out(Muxinst1_0_io_out)
  );
  Mux4 Muxinst1_1 ( // @[FCLayer.scala 43:23]
    .io_in_0(Muxinst1_1_io_in_0),
    .io_in_1(Muxinst1_1_io_in_1),
    .io_in_2(Muxinst1_1_io_in_2),
    .io_in_3(Muxinst1_1_io_in_3),
    .io_sel(Muxinst1_1_io_sel),
    .io_out(Muxinst1_1_io_out)
  );
  Mux4 Muxinst1_2 ( // @[FCLayer.scala 43:23]
    .io_in_0(Muxinst1_2_io_in_0),
    .io_in_1(Muxinst1_2_io_in_1),
    .io_in_2(Muxinst1_2_io_in_2),
    .io_in_3(Muxinst1_2_io_in_3),
    .io_sel(Muxinst1_2_io_sel),
    .io_out(Muxinst1_2_io_out)
  );
  Mux4 Muxinst1_3 ( // @[FCLayer.scala 43:23]
    .io_in_0(Muxinst1_3_io_in_0),
    .io_in_1(Muxinst1_3_io_in_1),
    .io_in_2(Muxinst1_3_io_in_2),
    .io_in_3(Muxinst1_3_io_in_3),
    .io_sel(Muxinst1_3_io_sel),
    .io_out(Muxinst1_3_io_out)
  );
  Mux4 Muxinst1_4 ( // @[FCLayer.scala 43:23]
    .io_in_0(Muxinst1_4_io_in_0),
    .io_in_1(Muxinst1_4_io_in_1),
    .io_in_2(Muxinst1_4_io_in_2),
    .io_in_3(Muxinst1_4_io_in_3),
    .io_sel(Muxinst1_4_io_sel),
    .io_out(Muxinst1_4_io_out)
  );
  Mux4 Muxinst1_5 ( // @[FCLayer.scala 43:23]
    .io_in_0(Muxinst1_5_io_in_0),
    .io_in_1(Muxinst1_5_io_in_1),
    .io_in_2(Muxinst1_5_io_in_2),
    .io_in_3(Muxinst1_5_io_in_3),
    .io_sel(Muxinst1_5_io_sel),
    .io_out(Muxinst1_5_io_out)
  );
  Mux4 Muxinst1_6 ( // @[FCLayer.scala 43:23]
    .io_in_0(Muxinst1_6_io_in_0),
    .io_in_1(Muxinst1_6_io_in_1),
    .io_in_2(Muxinst1_6_io_in_2),
    .io_in_3(Muxinst1_6_io_in_3),
    .io_sel(Muxinst1_6_io_sel),
    .io_out(Muxinst1_6_io_out)
  );
  Mux4 Muxinst1_7 ( // @[FCLayer.scala 43:23]
    .io_in_0(Muxinst1_7_io_in_0),
    .io_in_1(Muxinst1_7_io_in_1),
    .io_in_2(Muxinst1_7_io_in_2),
    .io_in_3(Muxinst1_7_io_in_3),
    .io_sel(Muxinst1_7_io_sel),
    .io_out(Muxinst1_7_io_out)
  );
  Mux4 Muxinst1_8 ( // @[FCLayer.scala 43:23]
    .io_in_0(Muxinst1_8_io_in_0),
    .io_in_1(Muxinst1_8_io_in_1),
    .io_in_2(Muxinst1_8_io_in_2),
    .io_in_3(Muxinst1_8_io_in_3),
    .io_sel(Muxinst1_8_io_sel),
    .io_out(Muxinst1_8_io_out)
  );
  Mux4 Muxinst1_9 ( // @[FCLayer.scala 43:23]
    .io_in_0(Muxinst1_9_io_in_0),
    .io_in_1(Muxinst1_9_io_in_1),
    .io_in_2(Muxinst1_9_io_in_2),
    .io_in_3(Muxinst1_9_io_in_3),
    .io_sel(Muxinst1_9_io_sel),
    .io_out(Muxinst1_9_io_out)
  );
  Mux4 Muxinst1_10 ( // @[FCLayer.scala 43:23]
    .io_in_0(Muxinst1_10_io_in_0),
    .io_in_1(Muxinst1_10_io_in_1),
    .io_in_2(Muxinst1_10_io_in_2),
    .io_in_3(Muxinst1_10_io_in_3),
    .io_sel(Muxinst1_10_io_sel),
    .io_out(Muxinst1_10_io_out)
  );
  Mux4 Muxinst1_11 ( // @[FCLayer.scala 43:23]
    .io_in_0(Muxinst1_11_io_in_0),
    .io_in_1(Muxinst1_11_io_in_1),
    .io_in_2(Muxinst1_11_io_in_2),
    .io_in_3(Muxinst1_11_io_in_3),
    .io_sel(Muxinst1_11_io_sel),
    .io_out(Muxinst1_11_io_out)
  );
  Mux4 Muxinst1_12 ( // @[FCLayer.scala 43:23]
    .io_in_0(Muxinst1_12_io_in_0),
    .io_in_1(Muxinst1_12_io_in_1),
    .io_in_2(Muxinst1_12_io_in_2),
    .io_in_3(Muxinst1_12_io_in_3),
    .io_sel(Muxinst1_12_io_sel),
    .io_out(Muxinst1_12_io_out)
  );
  Mux4 Muxinst1_13 ( // @[FCLayer.scala 43:23]
    .io_in_0(Muxinst1_13_io_in_0),
    .io_in_1(Muxinst1_13_io_in_1),
    .io_in_2(Muxinst1_13_io_in_2),
    .io_in_3(Muxinst1_13_io_in_3),
    .io_sel(Muxinst1_13_io_sel),
    .io_out(Muxinst1_13_io_out)
  );
  Mux4 Muxinst1_14 ( // @[FCLayer.scala 43:23]
    .io_in_0(Muxinst1_14_io_in_0),
    .io_in_1(Muxinst1_14_io_in_1),
    .io_in_2(Muxinst1_14_io_in_2),
    .io_in_3(Muxinst1_14_io_in_3),
    .io_sel(Muxinst1_14_io_sel),
    .io_out(Muxinst1_14_io_out)
  );
  Mux4 Muxinst1_15 ( // @[FCLayer.scala 43:23]
    .io_in_0(Muxinst1_15_io_in_0),
    .io_in_1(Muxinst1_15_io_in_1),
    .io_in_2(Muxinst1_15_io_in_2),
    .io_in_3(Muxinst1_15_io_in_3),
    .io_sel(Muxinst1_15_io_sel),
    .io_out(Muxinst1_15_io_out)
  );
  Mux4 Muxinst2_0 ( // @[FCLayer.scala 49:23]
    .io_in_0(Muxinst2_0_io_in_0),
    .io_in_1(Muxinst2_0_io_in_1),
    .io_in_2(Muxinst2_0_io_in_2),
    .io_in_3(Muxinst2_0_io_in_3),
    .io_sel(Muxinst2_0_io_sel),
    .io_out(Muxinst2_0_io_out)
  );
  Mux4 Muxinst2_1 ( // @[FCLayer.scala 49:23]
    .io_in_0(Muxinst2_1_io_in_0),
    .io_in_1(Muxinst2_1_io_in_1),
    .io_in_2(Muxinst2_1_io_in_2),
    .io_in_3(Muxinst2_1_io_in_3),
    .io_sel(Muxinst2_1_io_sel),
    .io_out(Muxinst2_1_io_out)
  );
  Mux4 Muxinst2_2 ( // @[FCLayer.scala 49:23]
    .io_in_0(Muxinst2_2_io_in_0),
    .io_in_1(Muxinst2_2_io_in_1),
    .io_in_2(Muxinst2_2_io_in_2),
    .io_in_3(Muxinst2_2_io_in_3),
    .io_sel(Muxinst2_2_io_sel),
    .io_out(Muxinst2_2_io_out)
  );
  Mux4 Muxinst2_3 ( // @[FCLayer.scala 49:23]
    .io_in_0(Muxinst2_3_io_in_0),
    .io_in_1(Muxinst2_3_io_in_1),
    .io_in_2(Muxinst2_3_io_in_2),
    .io_in_3(Muxinst2_3_io_in_3),
    .io_sel(Muxinst2_3_io_sel),
    .io_out(Muxinst2_3_io_out)
  );
  Mux4 Muxinst2_4 ( // @[FCLayer.scala 49:23]
    .io_in_0(Muxinst2_4_io_in_0),
    .io_in_1(Muxinst2_4_io_in_1),
    .io_in_2(Muxinst2_4_io_in_2),
    .io_in_3(Muxinst2_4_io_in_3),
    .io_sel(Muxinst2_4_io_sel),
    .io_out(Muxinst2_4_io_out)
  );
  Mux4 Muxinst2_5 ( // @[FCLayer.scala 49:23]
    .io_in_0(Muxinst2_5_io_in_0),
    .io_in_1(Muxinst2_5_io_in_1),
    .io_in_2(Muxinst2_5_io_in_2),
    .io_in_3(Muxinst2_5_io_in_3),
    .io_sel(Muxinst2_5_io_sel),
    .io_out(Muxinst2_5_io_out)
  );
  Mux4 Muxinst2_6 ( // @[FCLayer.scala 49:23]
    .io_in_0(Muxinst2_6_io_in_0),
    .io_in_1(Muxinst2_6_io_in_1),
    .io_in_2(Muxinst2_6_io_in_2),
    .io_in_3(Muxinst2_6_io_in_3),
    .io_sel(Muxinst2_6_io_sel),
    .io_out(Muxinst2_6_io_out)
  );
  Mux4 Muxinst2_7 ( // @[FCLayer.scala 49:23]
    .io_in_0(Muxinst2_7_io_in_0),
    .io_in_1(Muxinst2_7_io_in_1),
    .io_in_2(Muxinst2_7_io_in_2),
    .io_in_3(Muxinst2_7_io_in_3),
    .io_sel(Muxinst2_7_io_sel),
    .io_out(Muxinst2_7_io_out)
  );
  Mux4 Muxinst2_8 ( // @[FCLayer.scala 49:23]
    .io_in_0(Muxinst2_8_io_in_0),
    .io_in_1(Muxinst2_8_io_in_1),
    .io_in_2(Muxinst2_8_io_in_2),
    .io_in_3(Muxinst2_8_io_in_3),
    .io_sel(Muxinst2_8_io_sel),
    .io_out(Muxinst2_8_io_out)
  );
  Mux4 Muxinst2_9 ( // @[FCLayer.scala 49:23]
    .io_in_0(Muxinst2_9_io_in_0),
    .io_in_1(Muxinst2_9_io_in_1),
    .io_in_2(Muxinst2_9_io_in_2),
    .io_in_3(Muxinst2_9_io_in_3),
    .io_sel(Muxinst2_9_io_sel),
    .io_out(Muxinst2_9_io_out)
  );
  Mux4 Muxinst2_10 ( // @[FCLayer.scala 49:23]
    .io_in_0(Muxinst2_10_io_in_0),
    .io_in_1(Muxinst2_10_io_in_1),
    .io_in_2(Muxinst2_10_io_in_2),
    .io_in_3(Muxinst2_10_io_in_3),
    .io_sel(Muxinst2_10_io_sel),
    .io_out(Muxinst2_10_io_out)
  );
  Mux4 Muxinst2_11 ( // @[FCLayer.scala 49:23]
    .io_in_0(Muxinst2_11_io_in_0),
    .io_in_1(Muxinst2_11_io_in_1),
    .io_in_2(Muxinst2_11_io_in_2),
    .io_in_3(Muxinst2_11_io_in_3),
    .io_sel(Muxinst2_11_io_sel),
    .io_out(Muxinst2_11_io_out)
  );
  Mux4 Muxinst2_12 ( // @[FCLayer.scala 49:23]
    .io_in_0(Muxinst2_12_io_in_0),
    .io_in_1(Muxinst2_12_io_in_1),
    .io_in_2(Muxinst2_12_io_in_2),
    .io_in_3(Muxinst2_12_io_in_3),
    .io_sel(Muxinst2_12_io_sel),
    .io_out(Muxinst2_12_io_out)
  );
  Mux4 Muxinst2_13 ( // @[FCLayer.scala 49:23]
    .io_in_0(Muxinst2_13_io_in_0),
    .io_in_1(Muxinst2_13_io_in_1),
    .io_in_2(Muxinst2_13_io_in_2),
    .io_in_3(Muxinst2_13_io_in_3),
    .io_sel(Muxinst2_13_io_sel),
    .io_out(Muxinst2_13_io_out)
  );
  Mux4 Muxinst2_14 ( // @[FCLayer.scala 49:23]
    .io_in_0(Muxinst2_14_io_in_0),
    .io_in_1(Muxinst2_14_io_in_1),
    .io_in_2(Muxinst2_14_io_in_2),
    .io_in_3(Muxinst2_14_io_in_3),
    .io_sel(Muxinst2_14_io_sel),
    .io_out(Muxinst2_14_io_out)
  );
  Mux4 Muxinst2_15 ( // @[FCLayer.scala 49:23]
    .io_in_0(Muxinst2_15_io_in_0),
    .io_in_1(Muxinst2_15_io_in_1),
    .io_in_2(Muxinst2_15_io_in_2),
    .io_in_3(Muxinst2_15_io_in_3),
    .io_sel(Muxinst2_15_io_sel),
    .io_out(Muxinst2_15_io_out)
  );
  Mux2 Muxinst3_0 ( // @[FCLayer.scala 55:23]
    .io_in_0(Muxinst3_0_io_in_0),
    .io_in_1(Muxinst3_0_io_in_1),
    .io_sel(Muxinst3_0_io_sel),
    .io_out(Muxinst3_0_io_out)
  );
  Mux2 Muxinst3_1 ( // @[FCLayer.scala 55:23]
    .io_in_0(Muxinst3_1_io_in_0),
    .io_in_1(Muxinst3_1_io_in_1),
    .io_sel(Muxinst3_1_io_sel),
    .io_out(Muxinst3_1_io_out)
  );
  Mux2 Muxinst3_2 ( // @[FCLayer.scala 55:23]
    .io_in_0(Muxinst3_2_io_in_0),
    .io_in_1(Muxinst3_2_io_in_1),
    .io_sel(Muxinst3_2_io_sel),
    .io_out(Muxinst3_2_io_out)
  );
  Mux2 Muxinst3_3 ( // @[FCLayer.scala 55:23]
    .io_in_0(Muxinst3_3_io_in_0),
    .io_in_1(Muxinst3_3_io_in_1),
    .io_sel(Muxinst3_3_io_sel),
    .io_out(Muxinst3_3_io_out)
  );
  Mux2 Muxinst3_4 ( // @[FCLayer.scala 55:23]
    .io_in_0(Muxinst3_4_io_in_0),
    .io_in_1(Muxinst3_4_io_in_1),
    .io_sel(Muxinst3_4_io_sel),
    .io_out(Muxinst3_4_io_out)
  );
  Mux2 Muxinst3_5 ( // @[FCLayer.scala 55:23]
    .io_in_0(Muxinst3_5_io_in_0),
    .io_in_1(Muxinst3_5_io_in_1),
    .io_sel(Muxinst3_5_io_sel),
    .io_out(Muxinst3_5_io_out)
  );
  Mux2 Muxinst3_6 ( // @[FCLayer.scala 55:23]
    .io_in_0(Muxinst3_6_io_in_0),
    .io_in_1(Muxinst3_6_io_in_1),
    .io_sel(Muxinst3_6_io_sel),
    .io_out(Muxinst3_6_io_out)
  );
  Mux2 Muxinst3_7 ( // @[FCLayer.scala 55:23]
    .io_in_0(Muxinst3_7_io_in_0),
    .io_in_1(Muxinst3_7_io_in_1),
    .io_sel(Muxinst3_7_io_sel),
    .io_out(Muxinst3_7_io_out)
  );
  Mux2 Muxinst3_8 ( // @[FCLayer.scala 55:23]
    .io_in_0(Muxinst3_8_io_in_0),
    .io_in_1(Muxinst3_8_io_in_1),
    .io_sel(Muxinst3_8_io_sel),
    .io_out(Muxinst3_8_io_out)
  );
  Mux2 Muxinst3_9 ( // @[FCLayer.scala 55:23]
    .io_in_0(Muxinst3_9_io_in_0),
    .io_in_1(Muxinst3_9_io_in_1),
    .io_sel(Muxinst3_9_io_sel),
    .io_out(Muxinst3_9_io_out)
  );
  Mux2 Muxinst3_10 ( // @[FCLayer.scala 55:23]
    .io_in_0(Muxinst3_10_io_in_0),
    .io_in_1(Muxinst3_10_io_in_1),
    .io_sel(Muxinst3_10_io_sel),
    .io_out(Muxinst3_10_io_out)
  );
  Mux2 Muxinst3_11 ( // @[FCLayer.scala 55:23]
    .io_in_0(Muxinst3_11_io_in_0),
    .io_in_1(Muxinst3_11_io_in_1),
    .io_sel(Muxinst3_11_io_sel),
    .io_out(Muxinst3_11_io_out)
  );
  Mux2 Muxinst3_12 ( // @[FCLayer.scala 55:23]
    .io_in_0(Muxinst3_12_io_in_0),
    .io_in_1(Muxinst3_12_io_in_1),
    .io_sel(Muxinst3_12_io_sel),
    .io_out(Muxinst3_12_io_out)
  );
  Mux2 Muxinst3_13 ( // @[FCLayer.scala 55:23]
    .io_in_0(Muxinst3_13_io_in_0),
    .io_in_1(Muxinst3_13_io_in_1),
    .io_sel(Muxinst3_13_io_sel),
    .io_out(Muxinst3_13_io_out)
  );
  Mux2 Muxinst3_14 ( // @[FCLayer.scala 55:23]
    .io_in_0(Muxinst3_14_io_in_0),
    .io_in_1(Muxinst3_14_io_in_1),
    .io_sel(Muxinst3_14_io_sel),
    .io_out(Muxinst3_14_io_out)
  );
  Mux2 Muxinst3_15 ( // @[FCLayer.scala 55:23]
    .io_in_0(Muxinst3_15_io_in_0),
    .io_in_1(Muxinst3_15_io_in_1),
    .io_sel(Muxinst3_15_io_sel),
    .io_out(Muxinst3_15_io_out)
  );
  Demux1_4 DemuxInst_1 ( // @[FCLayer.scala 60:29]
    .clock(DemuxInst_1_clock),
    .io_in(DemuxInst_1_io_in),
    .io_sel(DemuxInst_1_io_sel),
    .io_enable_0(DemuxInst_1_io_enable_0),
    .io_enable_1(DemuxInst_1_io_enable_1),
    .io_enable_2(DemuxInst_1_io_enable_2),
    .io_enable_3(DemuxInst_1_io_enable_3),
    .io_out_0(DemuxInst_1_io_out_0),
    .io_out_1(DemuxInst_1_io_out_1),
    .io_out_2(DemuxInst_1_io_out_2),
    .io_out_3(DemuxInst_1_io_out_3)
  );
  Demux1_4 DemuxInst_2 ( // @[FCLayer.scala 61:29]
    .clock(DemuxInst_2_clock),
    .io_in(DemuxInst_2_io_in),
    .io_sel(DemuxInst_2_io_sel),
    .io_enable_0(DemuxInst_2_io_enable_0),
    .io_enable_1(DemuxInst_2_io_enable_1),
    .io_enable_2(DemuxInst_2_io_enable_2),
    .io_enable_3(DemuxInst_2_io_enable_3),
    .io_out_0(DemuxInst_2_io_out_0),
    .io_out_1(DemuxInst_2_io_out_1),
    .io_out_2(DemuxInst_2_io_out_2),
    .io_out_3(DemuxInst_2_io_out_3)
  );
  Demux1_2 DemuxInst_3 ( // @[FCLayer.scala 62:29]
    .clock(DemuxInst_3_clock),
    .io_in(DemuxInst_3_io_in),
    .io_sel(DemuxInst_3_io_sel),
    .io_enable_0(DemuxInst_3_io_enable_0),
    .io_enable_1(DemuxInst_3_io_enable_1),
    .io_out_0(DemuxInst_3_io_out_0),
    .io_out_1(DemuxInst_3_io_out_1)
  );
  Mux4 MuxInst1 ( // @[FCLayer.scala 104:26]
    .io_in_0(MuxInst1_io_in_0),
    .io_in_1(MuxInst1_io_in_1),
    .io_in_2(MuxInst1_io_in_2),
    .io_in_3(MuxInst1_io_in_3),
    .io_sel(MuxInst1_io_sel),
    .io_out(MuxInst1_io_out)
  );
  Mux4 MuxInst2 ( // @[FCLayer.scala 105:26]
    .io_in_0(MuxInst2_io_in_0),
    .io_in_1(MuxInst2_io_in_1),
    .io_in_2(MuxInst2_io_in_2),
    .io_in_3(MuxInst2_io_in_3),
    .io_sel(MuxInst2_io_sel),
    .io_out(MuxInst2_io_out)
  );
  Mux2 MuxInst3 ( // @[FCLayer.scala 106:26]
    .io_in_0(MuxInst3_io_in_0),
    .io_in_1(MuxInst3_io_in_1),
    .io_sel(MuxInst3_io_sel),
    .io_out(MuxInst3_io_out)
  );
  assign io_fC_out_0 = DemuxInst_1_io_out_0; // @[FCLayer.scala 149:20]
  assign io_fC_out_1 = DemuxInst_1_io_out_1; // @[FCLayer.scala 149:20]
  assign io_fC_out_2 = DemuxInst_1_io_out_2; // @[FCLayer.scala 149:20]
  assign io_fC_out_3 = DemuxInst_1_io_out_3; // @[FCLayer.scala 149:20]
  assign io_fC_out_4 = DemuxInst_2_io_out_0; // @[FCLayer.scala 152:20]
  assign io_fC_out_5 = DemuxInst_2_io_out_1; // @[FCLayer.scala 152:20]
  assign io_fC_out_6 = DemuxInst_2_io_out_2; // @[FCLayer.scala 152:20]
  assign io_fC_out_7 = DemuxInst_2_io_out_3; // @[FCLayer.scala 152:20]
  assign io_fC_out_8 = DemuxInst_3_io_out_0; // @[FCLayer.scala 155:20]
  assign io_fC_out_9 = DemuxInst_3_io_out_1; // @[FCLayer.scala 155:20]
  assign mul1_0_clock = clock;
  assign mul1_0_reset = reset;
  assign mul1_0_io_in_a_0 = Muxinst1_0_io_out; // @[FCLayer.scala 65:24]
  assign mul1_0_io_in_a_1 = Muxinst1_1_io_out; // @[FCLayer.scala 65:24]
  assign mul1_0_io_in_a_2 = Muxinst1_2_io_out; // @[FCLayer.scala 65:24]
  assign mul1_0_io_in_a_3 = Muxinst1_3_io_out; // @[FCLayer.scala 65:24]
  assign mul1_0_io_in_a_4 = Muxinst1_4_io_out; // @[FCLayer.scala 65:24]
  assign mul1_0_io_in_a_5 = Muxinst1_5_io_out; // @[FCLayer.scala 65:24]
  assign mul1_0_io_in_a_6 = Muxinst1_6_io_out; // @[FCLayer.scala 65:24]
  assign mul1_0_io_in_a_7 = Muxinst1_7_io_out; // @[FCLayer.scala 65:24]
  assign mul1_0_io_in_a_8 = Muxinst1_8_io_out; // @[FCLayer.scala 65:24]
  assign mul1_0_io_in_a_9 = Muxinst1_9_io_out; // @[FCLayer.scala 65:24]
  assign mul1_0_io_in_a_10 = Muxinst1_10_io_out; // @[FCLayer.scala 65:24]
  assign mul1_0_io_in_a_11 = Muxinst1_11_io_out; // @[FCLayer.scala 65:24]
  assign mul1_0_io_in_a_12 = Muxinst1_12_io_out; // @[FCLayer.scala 65:24]
  assign mul1_0_io_in_a_13 = Muxinst1_13_io_out; // @[FCLayer.scala 65:24]
  assign mul1_0_io_in_a_14 = Muxinst1_14_io_out; // @[FCLayer.scala 65:24]
  assign mul1_0_io_in_a_15 = Muxinst1_15_io_out; // @[FCLayer.scala 65:24]
  assign mul1_0_io_in_b_0 = io_matB_0; // @[FCLayer.scala 66:24]
  assign mul1_0_io_in_b_1 = io_matB_1; // @[FCLayer.scala 66:24]
  assign mul1_0_io_in_b_2 = io_matB_2; // @[FCLayer.scala 66:24]
  assign mul1_0_io_in_b_3 = io_matB_3; // @[FCLayer.scala 66:24]
  assign mul1_0_io_in_b_4 = io_matB_4; // @[FCLayer.scala 66:24]
  assign mul1_0_io_in_b_5 = io_matB_5; // @[FCLayer.scala 66:24]
  assign mul1_0_io_in_b_6 = io_matB_6; // @[FCLayer.scala 66:24]
  assign mul1_0_io_in_b_7 = io_matB_7; // @[FCLayer.scala 66:24]
  assign mul1_0_io_in_b_8 = io_matB_8; // @[FCLayer.scala 66:24]
  assign mul1_0_io_in_b_9 = io_matB_9; // @[FCLayer.scala 66:24]
  assign mul1_0_io_in_b_10 = io_matB_10; // @[FCLayer.scala 66:24]
  assign mul1_0_io_in_b_11 = io_matB_11; // @[FCLayer.scala 66:24]
  assign mul1_0_io_in_b_12 = io_matB_12; // @[FCLayer.scala 66:24]
  assign mul1_0_io_in_b_13 = io_matB_13; // @[FCLayer.scala 66:24]
  assign mul1_0_io_in_b_14 = io_matB_14; // @[FCLayer.scala 66:24]
  assign mul1_0_io_in_b_15 = io_matB_15; // @[FCLayer.scala 66:24]
  assign mul1_1_clock = clock;
  assign mul1_1_reset = reset;
  assign mul1_1_io_in_a_0 = Muxinst2_0_io_out; // @[FCLayer.scala 69:24]
  assign mul1_1_io_in_a_1 = Muxinst2_1_io_out; // @[FCLayer.scala 69:24]
  assign mul1_1_io_in_a_2 = Muxinst2_2_io_out; // @[FCLayer.scala 69:24]
  assign mul1_1_io_in_a_3 = Muxinst2_3_io_out; // @[FCLayer.scala 69:24]
  assign mul1_1_io_in_a_4 = Muxinst2_4_io_out; // @[FCLayer.scala 69:24]
  assign mul1_1_io_in_a_5 = Muxinst2_5_io_out; // @[FCLayer.scala 69:24]
  assign mul1_1_io_in_a_6 = Muxinst2_6_io_out; // @[FCLayer.scala 69:24]
  assign mul1_1_io_in_a_7 = Muxinst2_7_io_out; // @[FCLayer.scala 69:24]
  assign mul1_1_io_in_a_8 = Muxinst2_8_io_out; // @[FCLayer.scala 69:24]
  assign mul1_1_io_in_a_9 = Muxinst2_9_io_out; // @[FCLayer.scala 69:24]
  assign mul1_1_io_in_a_10 = Muxinst2_10_io_out; // @[FCLayer.scala 69:24]
  assign mul1_1_io_in_a_11 = Muxinst2_11_io_out; // @[FCLayer.scala 69:24]
  assign mul1_1_io_in_a_12 = Muxinst2_12_io_out; // @[FCLayer.scala 69:24]
  assign mul1_1_io_in_a_13 = Muxinst2_13_io_out; // @[FCLayer.scala 69:24]
  assign mul1_1_io_in_a_14 = Muxinst2_14_io_out; // @[FCLayer.scala 69:24]
  assign mul1_1_io_in_a_15 = Muxinst2_15_io_out; // @[FCLayer.scala 69:24]
  assign mul1_1_io_in_b_0 = io_matB_0; // @[FCLayer.scala 70:24]
  assign mul1_1_io_in_b_1 = io_matB_1; // @[FCLayer.scala 70:24]
  assign mul1_1_io_in_b_2 = io_matB_2; // @[FCLayer.scala 70:24]
  assign mul1_1_io_in_b_3 = io_matB_3; // @[FCLayer.scala 70:24]
  assign mul1_1_io_in_b_4 = io_matB_4; // @[FCLayer.scala 70:24]
  assign mul1_1_io_in_b_5 = io_matB_5; // @[FCLayer.scala 70:24]
  assign mul1_1_io_in_b_6 = io_matB_6; // @[FCLayer.scala 70:24]
  assign mul1_1_io_in_b_7 = io_matB_7; // @[FCLayer.scala 70:24]
  assign mul1_1_io_in_b_8 = io_matB_8; // @[FCLayer.scala 70:24]
  assign mul1_1_io_in_b_9 = io_matB_9; // @[FCLayer.scala 70:24]
  assign mul1_1_io_in_b_10 = io_matB_10; // @[FCLayer.scala 70:24]
  assign mul1_1_io_in_b_11 = io_matB_11; // @[FCLayer.scala 70:24]
  assign mul1_1_io_in_b_12 = io_matB_12; // @[FCLayer.scala 70:24]
  assign mul1_1_io_in_b_13 = io_matB_13; // @[FCLayer.scala 70:24]
  assign mul1_1_io_in_b_14 = io_matB_14; // @[FCLayer.scala 70:24]
  assign mul1_1_io_in_b_15 = io_matB_15; // @[FCLayer.scala 70:24]
  assign mul1_2_clock = clock;
  assign mul1_2_reset = reset;
  assign mul1_2_io_in_a_0 = Muxinst3_0_io_out; // @[FCLayer.scala 73:24]
  assign mul1_2_io_in_a_1 = Muxinst3_1_io_out; // @[FCLayer.scala 73:24]
  assign mul1_2_io_in_a_2 = Muxinst3_2_io_out; // @[FCLayer.scala 73:24]
  assign mul1_2_io_in_a_3 = Muxinst3_3_io_out; // @[FCLayer.scala 73:24]
  assign mul1_2_io_in_a_4 = Muxinst3_4_io_out; // @[FCLayer.scala 73:24]
  assign mul1_2_io_in_a_5 = Muxinst3_5_io_out; // @[FCLayer.scala 73:24]
  assign mul1_2_io_in_a_6 = Muxinst3_6_io_out; // @[FCLayer.scala 73:24]
  assign mul1_2_io_in_a_7 = Muxinst3_7_io_out; // @[FCLayer.scala 73:24]
  assign mul1_2_io_in_a_8 = Muxinst3_8_io_out; // @[FCLayer.scala 73:24]
  assign mul1_2_io_in_a_9 = Muxinst3_9_io_out; // @[FCLayer.scala 73:24]
  assign mul1_2_io_in_a_10 = Muxinst3_10_io_out; // @[FCLayer.scala 73:24]
  assign mul1_2_io_in_a_11 = Muxinst3_11_io_out; // @[FCLayer.scala 73:24]
  assign mul1_2_io_in_a_12 = Muxinst3_12_io_out; // @[FCLayer.scala 73:24]
  assign mul1_2_io_in_a_13 = Muxinst3_13_io_out; // @[FCLayer.scala 73:24]
  assign mul1_2_io_in_a_14 = Muxinst3_14_io_out; // @[FCLayer.scala 73:24]
  assign mul1_2_io_in_a_15 = Muxinst3_15_io_out; // @[FCLayer.scala 73:24]
  assign mul1_2_io_in_b_0 = io_matB_0; // @[FCLayer.scala 74:24]
  assign mul1_2_io_in_b_1 = io_matB_1; // @[FCLayer.scala 74:24]
  assign mul1_2_io_in_b_2 = io_matB_2; // @[FCLayer.scala 74:24]
  assign mul1_2_io_in_b_3 = io_matB_3; // @[FCLayer.scala 74:24]
  assign mul1_2_io_in_b_4 = io_matB_4; // @[FCLayer.scala 74:24]
  assign mul1_2_io_in_b_5 = io_matB_5; // @[FCLayer.scala 74:24]
  assign mul1_2_io_in_b_6 = io_matB_6; // @[FCLayer.scala 74:24]
  assign mul1_2_io_in_b_7 = io_matB_7; // @[FCLayer.scala 74:24]
  assign mul1_2_io_in_b_8 = io_matB_8; // @[FCLayer.scala 74:24]
  assign mul1_2_io_in_b_9 = io_matB_9; // @[FCLayer.scala 74:24]
  assign mul1_2_io_in_b_10 = io_matB_10; // @[FCLayer.scala 74:24]
  assign mul1_2_io_in_b_11 = io_matB_11; // @[FCLayer.scala 74:24]
  assign mul1_2_io_in_b_12 = io_matB_12; // @[FCLayer.scala 74:24]
  assign mul1_2_io_in_b_13 = io_matB_13; // @[FCLayer.scala 74:24]
  assign mul1_2_io_in_b_14 = io_matB_14; // @[FCLayer.scala 74:24]
  assign mul1_2_io_in_b_15 = io_matB_15; // @[FCLayer.scala 74:24]
  assign sum_0_clock = clock;
  assign sum_0_reset = reset;
  assign sum_0_io_in_a = mul1_0_io_out_s; // @[FCLayer.scala 126:20]
  assign sum_0_io_in_b = MuxInst1_io_out; // @[FCLayer.scala 127:20]
  assign sum_1_clock = clock;
  assign sum_1_reset = reset;
  assign sum_1_io_in_a = mul1_1_io_out_s; // @[FCLayer.scala 129:20]
  assign sum_1_io_in_b = MuxInst2_io_out; // @[FCLayer.scala 130:20]
  assign sum_2_clock = clock;
  assign sum_2_reset = reset;
  assign sum_2_io_in_a = mul1_2_io_out_s; // @[FCLayer.scala 132:20]
  assign sum_2_io_in_b = MuxInst3_io_out; // @[FCLayer.scala 133:20]
  assign Muxinst1_0_io_in_0 = 32'h3dccccc0; // @[FCLayer.scala 80:28]
  assign Muxinst1_0_io_in_1 = 32'h3df5c280; // @[FCLayer.scala 80:28]
  assign Muxinst1_0_io_in_2 = 32'h3f9c28f5; // @[FCLayer.scala 80:28]
  assign Muxinst1_0_io_in_3 = 32'h3f8e147a; // @[FCLayer.scala 80:28]
  assign Muxinst1_0_io_sel = io_MuxSel; // @[FCLayer.scala 95:24]
  assign Muxinst1_1_io_in_0 = 32'h3dccccc0; // @[FCLayer.scala 80:28]
  assign Muxinst1_1_io_in_1 = 32'h3e75c288; // @[FCLayer.scala 80:28]
  assign Muxinst1_1_io_in_2 = 32'h40466666; // @[FCLayer.scala 80:28]
  assign Muxinst1_1_io_in_3 = 32'h3f63d70a; // @[FCLayer.scala 80:28]
  assign Muxinst1_1_io_sel = io_MuxSel; // @[FCLayer.scala 95:24]
  assign Muxinst1_2_io_in_0 = 32'h3e6147a8; // @[FCLayer.scala 80:28]
  assign Muxinst1_2_io_in_1 = 32'h3de147a0; // @[FCLayer.scala 80:28]
  assign Muxinst1_2_io_in_2 = 32'h40c3851e; // @[FCLayer.scala 80:28]
  assign Muxinst1_2_io_in_3 = 32'h40333333; // @[FCLayer.scala 80:28]
  assign Muxinst1_2_io_sel = io_MuxSel; // @[FCLayer.scala 95:24]
  assign Muxinst1_3_io_in_0 = 32'h3dccccc0; // @[FCLayer.scala 80:28]
  assign Muxinst1_3_io_in_1 = 32'h3f63d70a; // @[FCLayer.scala 80:28]
  assign Muxinst1_3_io_in_2 = 32'h4111c28f; // @[FCLayer.scala 80:28]
  assign Muxinst1_3_io_in_3 = 32'h400e147a; // @[FCLayer.scala 80:28]
  assign Muxinst1_3_io_sel = io_MuxSel; // @[FCLayer.scala 95:24]
  assign Muxinst1_4_io_in_0 = 32'h3de147a0; // @[FCLayer.scala 80:28]
  assign Muxinst1_4_io_in_1 = 32'h40333333; // @[FCLayer.scala 80:28]
  assign Muxinst1_4_io_in_2 = 32'h40070a3d; // @[FCLayer.scala 80:28]
  assign Muxinst1_4_io_in_3 = 32'h40933333; // @[FCLayer.scala 80:28]
  assign Muxinst1_4_io_sel = io_MuxSel; // @[FCLayer.scala 95:24]
  assign Muxinst1_5_io_in_0 = 32'h3de147a0; // @[FCLayer.scala 80:28]
  assign Muxinst1_5_io_in_1 = 32'h3e6147a8; // @[FCLayer.scala 80:28]
  assign Muxinst1_5_io_in_2 = 32'h3f8020c4; // @[FCLayer.scala 80:28]
  assign Muxinst1_5_io_in_3 = 32'h3f8a3d70; // @[FCLayer.scala 80:28]
  assign Muxinst1_5_io_sel = io_MuxSel; // @[FCLayer.scala 95:24]
  assign Muxinst1_6_io_in_0 = 32'h3de147a0; // @[FCLayer.scala 80:28]
  assign Muxinst1_6_io_in_1 = 32'h40933333; // @[FCLayer.scala 80:28]
  assign Muxinst1_6_io_in_2 = 32'h404ccccc; // @[FCLayer.scala 80:28]
  assign Muxinst1_6_io_in_3 = 32'h4015c28f; // @[FCLayer.scala 80:28]
  assign Muxinst1_6_io_sel = io_MuxSel; // @[FCLayer.scala 95:24]
  assign Muxinst1_7_io_in_0 = 32'h3f8020c4; // @[FCLayer.scala 80:28]
  assign Muxinst1_7_io_in_1 = 32'h3f8a3d70; // @[FCLayer.scala 80:28]
  assign Muxinst1_7_io_in_2 = 32'h40d66666; // @[FCLayer.scala 80:28]
  assign Muxinst1_7_io_in_3 = 32'h4007ae14; // @[FCLayer.scala 80:28]
  assign Muxinst1_7_io_sel = io_MuxSel; // @[FCLayer.scala 95:24]
  assign Muxinst1_8_io_in_0 = 32'h3e4cccc8; // @[FCLayer.scala 80:28]
  assign Muxinst1_8_io_in_1 = 32'h3eae1478; // @[FCLayer.scala 80:28]
  assign Muxinst1_8_io_in_2 = 32'h41011eb8; // @[FCLayer.scala 80:28]
  assign Muxinst1_8_io_in_3 = 32'h40f47ae1; // @[FCLayer.scala 80:28]
  assign Muxinst1_8_io_sel = io_MuxSel; // @[FCLayer.scala 95:24]
  assign Muxinst1_9_io_in_0 = 32'h3f333332; // @[FCLayer.scala 80:28]
  assign Muxinst1_9_io_in_1 = 32'h4007ae14; // @[FCLayer.scala 80:28]
  assign Muxinst1_9_io_in_2 = 32'h40066666; // @[FCLayer.scala 80:28]
  assign Muxinst1_9_io_in_3 = 32'h4110a3d7; // @[FCLayer.scala 80:28]
  assign Muxinst1_9_io_sel = io_MuxSel; // @[FCLayer.scala 95:24]
  assign Muxinst1_10_io_in_0 = 32'h3d8f5c20; // @[FCLayer.scala 80:28]
  assign Muxinst1_10_io_in_1 = 32'h3f23d70a; // @[FCLayer.scala 80:28]
  assign Muxinst1_10_io_in_2 = 32'h3f9d70a3; // @[FCLayer.scala 80:28]
  assign Muxinst1_10_io_in_3 = 32'h4015c28f; // @[FCLayer.scala 80:28]
  assign Muxinst1_10_io_sel = io_MuxSel; // @[FCLayer.scala 95:24]
  assign Muxinst1_11_io_in_0 = 32'h3dccccc0; // @[FCLayer.scala 80:28]
  assign Muxinst1_11_io_in_1 = 32'h3d23d700; // @[FCLayer.scala 80:28]
  assign Muxinst1_11_io_in_2 = 32'h404f5c28; // @[FCLayer.scala 80:28]
  assign Muxinst1_11_io_in_3 = 32'h3f9d70a3; // @[FCLayer.scala 80:28]
  assign Muxinst1_11_io_sel = io_MuxSel; // @[FCLayer.scala 95:24]
  assign Muxinst1_12_io_in_0 = 32'h3e6b8518; // @[FCLayer.scala 80:28]
  assign Muxinst1_12_io_in_1 = 32'h3eae1478; // @[FCLayer.scala 80:28]
  assign Muxinst1_12_io_in_2 = 32'h3f9d70a3; // @[FCLayer.scala 80:28]
  assign Muxinst1_12_io_in_3 = 32'h40066666; // @[FCLayer.scala 80:28]
  assign Muxinst1_12_io_sel = io_MuxSel; // @[FCLayer.scala 95:24]
  assign Muxinst1_13_io_in_0 = 32'h3e75c288; // @[FCLayer.scala 80:28]
  assign Muxinst1_13_io_in_1 = 32'h3f9d70a3; // @[FCLayer.scala 80:28]
  assign Muxinst1_13_io_in_2 = 32'h404e147a; // @[FCLayer.scala 80:28]
  assign Muxinst1_13_io_in_3 = 32'h3f8ccccc; // @[FCLayer.scala 80:28]
  assign Muxinst1_13_io_sel = io_MuxSel; // @[FCLayer.scala 95:24]
  assign Muxinst1_14_io_in_0 = 32'h3e6b8518; // @[FCLayer.scala 80:28]
  assign Muxinst1_14_io_in_1 = 32'h40066666; // @[FCLayer.scala 80:28]
  assign Muxinst1_14_io_in_2 = 32'h40a3d70a; // @[FCLayer.scala 80:28]
  assign Muxinst1_14_io_in_3 = 32'h3f9c28f5; // @[FCLayer.scala 80:28]
  assign Muxinst1_14_io_sel = io_MuxSel; // @[FCLayer.scala 95:24]
  assign Muxinst1_15_io_in_0 = 32'h3e6147a8; // @[FCLayer.scala 80:28]
  assign Muxinst1_15_io_in_1 = 32'h3f8ccccc; // @[FCLayer.scala 80:28]
  assign Muxinst1_15_io_in_2 = 32'h404f5c28; // @[FCLayer.scala 80:28]
  assign Muxinst1_15_io_in_3 = 32'h40466666; // @[FCLayer.scala 80:28]
  assign Muxinst1_15_io_sel = io_MuxSel; // @[FCLayer.scala 95:24]
  assign Muxinst2_0_io_in_0 = 32'h40c3851e; // @[FCLayer.scala 85:28]
  assign Muxinst2_0_io_in_1 = 32'h40333333; // @[FCLayer.scala 85:28]
  assign Muxinst2_0_io_in_2 = 32'h40070a3d; // @[FCLayer.scala 85:28]
  assign Muxinst2_0_io_in_3 = 32'h40933333; // @[FCLayer.scala 85:28]
  assign Muxinst2_0_io_sel = io_MuxSel; // @[FCLayer.scala 98:24]
  assign Muxinst2_1_io_in_0 = 32'h4111c28f; // @[FCLayer.scala 85:28]
  assign Muxinst2_1_io_in_1 = 32'h400e147a; // @[FCLayer.scala 85:28]
  assign Muxinst2_1_io_in_2 = 32'h3f8020c4; // @[FCLayer.scala 85:28]
  assign Muxinst2_1_io_in_3 = 32'h3f8a3d70; // @[FCLayer.scala 85:28]
  assign Muxinst2_1_io_sel = io_MuxSel; // @[FCLayer.scala 98:24]
  assign Muxinst2_2_io_in_0 = 32'h40070a3d; // @[FCLayer.scala 85:28]
  assign Muxinst2_2_io_in_1 = 32'h40933333; // @[FCLayer.scala 85:28]
  assign Muxinst2_2_io_in_2 = 32'h404ccccc; // @[FCLayer.scala 85:28]
  assign Muxinst2_2_io_in_3 = 32'h4015c28f; // @[FCLayer.scala 85:28]
  assign Muxinst2_2_io_sel = io_MuxSel; // @[FCLayer.scala 98:24]
  assign Muxinst2_3_io_in_0 = 32'h3f8020c4; // @[FCLayer.scala 85:28]
  assign Muxinst2_3_io_in_1 = 32'h3f8a3d70; // @[FCLayer.scala 85:28]
  assign Muxinst2_3_io_in_2 = 32'h40d66666; // @[FCLayer.scala 85:28]
  assign Muxinst2_3_io_in_3 = 32'h4007ae14; // @[FCLayer.scala 85:28]
  assign Muxinst2_3_io_sel = io_MuxSel; // @[FCLayer.scala 98:24]
  assign Muxinst2_4_io_in_0 = 32'h404ccccc; // @[FCLayer.scala 85:28]
  assign Muxinst2_4_io_in_1 = 32'h4015c28f; // @[FCLayer.scala 85:28]
  assign Muxinst2_4_io_in_2 = 32'h41011eb8; // @[FCLayer.scala 85:28]
  assign Muxinst2_4_io_in_3 = 32'h40f47ae1; // @[FCLayer.scala 85:28]
  assign Muxinst2_4_io_sel = io_MuxSel; // @[FCLayer.scala 98:24]
  assign Muxinst2_5_io_in_0 = 32'h40d66666; // @[FCLayer.scala 85:28]
  assign Muxinst2_5_io_in_1 = 32'h4007ae14; // @[FCLayer.scala 85:28]
  assign Muxinst2_5_io_in_2 = 32'h40066666; // @[FCLayer.scala 85:28]
  assign Muxinst2_5_io_in_3 = 32'h4110a3d7; // @[FCLayer.scala 85:28]
  assign Muxinst2_5_io_sel = io_MuxSel; // @[FCLayer.scala 98:24]
  assign Muxinst2_6_io_in_0 = 32'h41011eb8; // @[FCLayer.scala 85:28]
  assign Muxinst2_6_io_in_1 = 32'h40f47ae1; // @[FCLayer.scala 85:28]
  assign Muxinst2_6_io_in_2 = 32'h3f9d70a3; // @[FCLayer.scala 85:28]
  assign Muxinst2_6_io_in_3 = 32'h4015c28f; // @[FCLayer.scala 85:28]
  assign Muxinst2_6_io_sel = io_MuxSel; // @[FCLayer.scala 98:24]
  assign Muxinst2_7_io_in_0 = 32'h40066666; // @[FCLayer.scala 85:28]
  assign Muxinst2_7_io_in_1 = 32'h4110a3d7; // @[FCLayer.scala 85:28]
  assign Muxinst2_7_io_in_2 = 32'h404f5c28; // @[FCLayer.scala 85:28]
  assign Muxinst2_7_io_in_3 = 32'h3f9d70a3; // @[FCLayer.scala 85:28]
  assign Muxinst2_7_io_sel = io_MuxSel; // @[FCLayer.scala 98:24]
  assign Muxinst2_8_io_in_0 = 32'h3f9d70a3; // @[FCLayer.scala 85:28]
  assign Muxinst2_8_io_in_1 = 32'h4015c28f; // @[FCLayer.scala 85:28]
  assign Muxinst2_8_io_in_2 = 32'h3f9d70a3; // @[FCLayer.scala 85:28]
  assign Muxinst2_8_io_in_3 = 32'h40066666; // @[FCLayer.scala 85:28]
  assign Muxinst2_8_io_sel = io_MuxSel; // @[FCLayer.scala 98:24]
  assign Muxinst2_9_io_in_0 = 32'h404f5c28; // @[FCLayer.scala 85:28]
  assign Muxinst2_9_io_in_1 = 32'h3f9d70a3; // @[FCLayer.scala 85:28]
  assign Muxinst2_9_io_in_2 = 32'h404e147a; // @[FCLayer.scala 85:28]
  assign Muxinst2_9_io_in_3 = 32'h3f8ccccc; // @[FCLayer.scala 85:28]
  assign Muxinst2_9_io_sel = io_MuxSel; // @[FCLayer.scala 98:24]
  assign Muxinst2_10_io_in_0 = 32'h3f9d70a3; // @[FCLayer.scala 85:28]
  assign Muxinst2_10_io_in_1 = 32'h40066666; // @[FCLayer.scala 85:28]
  assign Muxinst2_10_io_in_2 = 32'h40a3d70a; // @[FCLayer.scala 85:28]
  assign Muxinst2_10_io_in_3 = 32'h3f9c28f5; // @[FCLayer.scala 85:28]
  assign Muxinst2_10_io_sel = io_MuxSel; // @[FCLayer.scala 98:24]
  assign Muxinst2_11_io_in_0 = 32'h404e147a; // @[FCLayer.scala 85:28]
  assign Muxinst2_11_io_in_1 = 32'h3f8ccccc; // @[FCLayer.scala 85:28]
  assign Muxinst2_11_io_in_2 = 32'h404f5c28; // @[FCLayer.scala 85:28]
  assign Muxinst2_11_io_in_3 = 32'h40466666; // @[FCLayer.scala 85:28]
  assign Muxinst2_11_io_sel = io_MuxSel; // @[FCLayer.scala 98:24]
  assign Muxinst2_12_io_in_0 = 32'h40a3d70a; // @[FCLayer.scala 85:28]
  assign Muxinst2_12_io_in_1 = 32'h3f9c28f5; // @[FCLayer.scala 85:28]
  assign Muxinst2_12_io_in_2 = 32'h3f8e147a; // @[FCLayer.scala 85:28]
  assign Muxinst2_12_io_in_3 = 32'h40c3851e; // @[FCLayer.scala 85:28]
  assign Muxinst2_12_io_sel = io_MuxSel; // @[FCLayer.scala 98:24]
  assign Muxinst2_13_io_in_0 = 32'h404f5c28; // @[FCLayer.scala 85:28]
  assign Muxinst2_13_io_in_1 = 32'h40466666; // @[FCLayer.scala 85:28]
  assign Muxinst2_13_io_in_2 = 32'h3f63d70a; // @[FCLayer.scala 85:28]
  assign Muxinst2_13_io_in_3 = 32'h4111c28f; // @[FCLayer.scala 85:28]
  assign Muxinst2_13_io_sel = io_MuxSel; // @[FCLayer.scala 98:24]
  assign Muxinst2_14_io_in_0 = 32'h3f8e147a; // @[FCLayer.scala 85:28]
  assign Muxinst2_14_io_in_1 = 32'h40c3851e; // @[FCLayer.scala 85:28]
  assign Muxinst2_14_io_in_2 = 32'h40333333; // @[FCLayer.scala 85:28]
  assign Muxinst2_14_io_in_3 = 32'h40070a3d; // @[FCLayer.scala 85:28]
  assign Muxinst2_14_io_sel = io_MuxSel; // @[FCLayer.scala 98:24]
  assign Muxinst2_15_io_in_0 = 32'h3f63d70a; // @[FCLayer.scala 85:28]
  assign Muxinst2_15_io_in_1 = 32'h4111c28f; // @[FCLayer.scala 85:28]
  assign Muxinst2_15_io_in_2 = 32'h400e147a; // @[FCLayer.scala 85:28]
  assign Muxinst2_15_io_in_3 = 32'h3f8020c4; // @[FCLayer.scala 85:28]
  assign Muxinst2_15_io_sel = io_MuxSel; // @[FCLayer.scala 98:24]
  assign Muxinst3_0_io_in_0 = 32'h404ccccc; // @[FCLayer.scala 90:28]
  assign Muxinst3_0_io_in_1 = 32'h4015c28f; // @[FCLayer.scala 90:28]
  assign Muxinst3_0_io_sel = io_MuxSel[1]; // @[FCLayer.scala 101:36]
  assign Muxinst3_1_io_in_0 = 32'h40d66666; // @[FCLayer.scala 90:28]
  assign Muxinst3_1_io_in_1 = 32'h4007ae14; // @[FCLayer.scala 90:28]
  assign Muxinst3_1_io_sel = io_MuxSel[1]; // @[FCLayer.scala 101:36]
  assign Muxinst3_2_io_in_0 = 32'h41011eb8; // @[FCLayer.scala 90:28]
  assign Muxinst3_2_io_in_1 = 32'h40f47ae1; // @[FCLayer.scala 90:28]
  assign Muxinst3_2_io_sel = io_MuxSel[1]; // @[FCLayer.scala 101:36]
  assign Muxinst3_3_io_in_0 = 32'h40066666; // @[FCLayer.scala 90:28]
  assign Muxinst3_3_io_in_1 = 32'h4110a3d7; // @[FCLayer.scala 90:28]
  assign Muxinst3_3_io_sel = io_MuxSel[1]; // @[FCLayer.scala 101:36]
  assign Muxinst3_4_io_in_0 = 32'h3f9d70a3; // @[FCLayer.scala 90:28]
  assign Muxinst3_4_io_in_1 = 32'h4015c28f; // @[FCLayer.scala 90:28]
  assign Muxinst3_4_io_sel = io_MuxSel[1]; // @[FCLayer.scala 101:36]
  assign Muxinst3_5_io_in_0 = 32'h404f5c28; // @[FCLayer.scala 90:28]
  assign Muxinst3_5_io_in_1 = 32'h3f9d70a3; // @[FCLayer.scala 90:28]
  assign Muxinst3_5_io_sel = io_MuxSel[1]; // @[FCLayer.scala 101:36]
  assign Muxinst3_6_io_in_0 = 32'h3f9d70a3; // @[FCLayer.scala 90:28]
  assign Muxinst3_6_io_in_1 = 32'h3f9d70a3; // @[FCLayer.scala 90:28]
  assign Muxinst3_6_io_sel = io_MuxSel[1]; // @[FCLayer.scala 101:36]
  assign Muxinst3_7_io_in_0 = 32'h404e147a; // @[FCLayer.scala 90:28]
  assign Muxinst3_7_io_in_1 = 32'h4087ae14; // @[FCLayer.scala 90:28]
  assign Muxinst3_7_io_sel = io_MuxSel[1]; // @[FCLayer.scala 101:36]
  assign Muxinst3_8_io_in_0 = 32'h40a3d70a; // @[FCLayer.scala 90:28]
  assign Muxinst3_8_io_in_1 = 32'h40d1eb85; // @[FCLayer.scala 90:28]
  assign Muxinst3_8_io_sel = io_MuxSel[1]; // @[FCLayer.scala 101:36]
  assign Muxinst3_9_io_in_0 = 32'h404f5c28; // @[FCLayer.scala 90:28]
  assign Muxinst3_9_io_in_1 = 32'h40000000; // @[FCLayer.scala 90:28]
  assign Muxinst3_9_io_sel = io_MuxSel[1]; // @[FCLayer.scala 101:36]
  assign Muxinst3_10_io_in_0 = 32'h3f8e147a; // @[FCLayer.scala 90:28]
  assign Muxinst3_10_io_in_1 = 32'h3f800000; // @[FCLayer.scala 90:28]
  assign Muxinst3_10_io_sel = io_MuxSel[1]; // @[FCLayer.scala 101:36]
  assign Muxinst3_11_io_in_0 = 32'h3f63d70a; // @[FCLayer.scala 90:28]
  assign Muxinst3_11_io_in_1 = 32'h40400000; // @[FCLayer.scala 90:28]
  assign Muxinst3_11_io_sel = io_MuxSel[1]; // @[FCLayer.scala 101:36]
  assign Muxinst3_12_io_in_0 = 32'h40333333; // @[FCLayer.scala 90:28]
  assign Muxinst3_12_io_in_1 = 32'h40800000; // @[FCLayer.scala 90:28]
  assign Muxinst3_12_io_sel = io_MuxSel[1]; // @[FCLayer.scala 101:36]
  assign Muxinst3_13_io_in_0 = 32'h400e147a; // @[FCLayer.scala 90:28]
  assign Muxinst3_13_io_in_1 = 32'h40a00000; // @[FCLayer.scala 90:28]
  assign Muxinst3_13_io_sel = io_MuxSel[1]; // @[FCLayer.scala 101:36]
  assign Muxinst3_14_io_in_0 = 32'h40933333; // @[FCLayer.scala 90:28]
  assign Muxinst3_14_io_in_1 = 32'h40c00000; // @[FCLayer.scala 90:28]
  assign Muxinst3_14_io_sel = io_MuxSel[1]; // @[FCLayer.scala 101:36]
  assign Muxinst3_15_io_in_0 = 32'h3f8a3d70; // @[FCLayer.scala 90:28]
  assign Muxinst3_15_io_in_1 = 32'h40e00000; // @[FCLayer.scala 90:28]
  assign Muxinst3_15_io_sel = io_MuxSel[1]; // @[FCLayer.scala 101:36]
  assign DemuxInst_1_clock = clock;
  assign DemuxInst_1_io_in = sum_0_io_out_s; // @[FCLayer.scala 137:23]
  assign DemuxInst_1_io_sel = io_MuxSel; // @[FCLayer.scala 111:26]
  assign DemuxInst_1_io_enable_0 = io_DemuxEn_0; // @[FCLayer.scala 142:32]
  assign DemuxInst_1_io_enable_1 = io_DemuxEn_1; // @[FCLayer.scala 142:32]
  assign DemuxInst_1_io_enable_2 = io_DemuxEn_2; // @[FCLayer.scala 142:32]
  assign DemuxInst_1_io_enable_3 = io_DemuxEn_3; // @[FCLayer.scala 142:32]
  assign DemuxInst_2_clock = clock;
  assign DemuxInst_2_io_in = sum_1_io_out_s; // @[FCLayer.scala 138:23]
  assign DemuxInst_2_io_sel = io_MuxSel; // @[FCLayer.scala 117:26]
  assign DemuxInst_2_io_enable_0 = io_DemuxEn_0; // @[FCLayer.scala 143:32]
  assign DemuxInst_2_io_enable_1 = io_DemuxEn_1; // @[FCLayer.scala 143:32]
  assign DemuxInst_2_io_enable_2 = io_DemuxEn_2; // @[FCLayer.scala 143:32]
  assign DemuxInst_2_io_enable_3 = io_DemuxEn_3; // @[FCLayer.scala 143:32]
  assign DemuxInst_3_clock = clock;
  assign DemuxInst_3_io_in = sum_2_io_out_s; // @[FCLayer.scala 139:23]
  assign DemuxInst_3_io_sel = io_MuxSel[1]; // @[FCLayer.scala 123:38]
  assign DemuxInst_3_io_enable_0 = io_DemuxEn_0; // @[FCLayer.scala 145:30]
  assign DemuxInst_3_io_enable_1 = io_DemuxEn_2; // @[FCLayer.scala 146:30]
  assign MuxInst1_io_in_0 = 32'h3f800000; // @[FCLayer.scala 109:25]
  assign MuxInst1_io_in_1 = 32'h3e4cccc8; // @[FCLayer.scala 109:25]
  assign MuxInst1_io_in_2 = 32'h3dccccc0; // @[FCLayer.scala 109:25]
  assign MuxInst1_io_in_3 = 32'h3e999998; // @[FCLayer.scala 109:25]
  assign MuxInst1_io_sel = io_MuxSel; // @[FCLayer.scala 110:23]
  assign MuxInst2_io_in_0 = 32'h40a00000; // @[FCLayer.scala 115:25]
  assign MuxInst2_io_in_1 = 32'h40c00000; // @[FCLayer.scala 115:25]
  assign MuxInst2_io_in_2 = 32'h40e00000; // @[FCLayer.scala 115:25]
  assign MuxInst2_io_in_3 = 32'h41000000; // @[FCLayer.scala 115:25]
  assign MuxInst2_io_sel = io_MuxSel; // @[FCLayer.scala 116:23]
  assign MuxInst3_io_in_0 = 32'h40066666; // @[FCLayer.scala 121:25]
  assign MuxInst3_io_in_1 = 32'h3f800000; // @[FCLayer.scala 121:25]
  assign MuxInst3_io_sel = io_MuxSel[1]; // @[FCLayer.scala 122:35]
endmodule
module DigitPrediction(
  input         clock,
  input  [31:0] io_input_0,
  input  [31:0] io_input_1,
  input  [31:0] io_input_2,
  input  [31:0] io_input_3,
  input  [31:0] io_input_4,
  input  [31:0] io_input_5,
  input  [31:0] io_input_6,
  input  [31:0] io_input_7,
  input  [31:0] io_input_8,
  input  [31:0] io_input_9,
  output [3:0]  io_Digit
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] fp1_io_in_a; // @[SoftMax.scala 27:21]
  wire [31:0] fp1_io_in_b; // @[SoftMax.scala 27:21]
  wire [31:0] fp1_io_out_s; // @[SoftMax.scala 27:21]
  wire [31:0] fp2_io_in_a; // @[SoftMax.scala 32:21]
  wire [31:0] fp2_io_in_b; // @[SoftMax.scala 32:21]
  wire [31:0] fp2_io_out_s; // @[SoftMax.scala 32:21]
  wire [31:0] fp3_io_in_a; // @[SoftMax.scala 37:21]
  wire [31:0] fp3_io_in_b; // @[SoftMax.scala 37:21]
  wire [31:0] fp3_io_out_s; // @[SoftMax.scala 37:21]
  wire [31:0] fp4_io_in_a; // @[SoftMax.scala 42:21]
  wire [31:0] fp4_io_in_b; // @[SoftMax.scala 42:21]
  wire [31:0] fp4_io_out_s; // @[SoftMax.scala 42:21]
  wire [31:0] fp5_io_in_a; // @[SoftMax.scala 47:21]
  wire [31:0] fp5_io_in_b; // @[SoftMax.scala 47:21]
  wire [31:0] fp5_io_out_s; // @[SoftMax.scala 47:21]
  wire [31:0] fp6_io_in_a; // @[SoftMax.scala 52:21]
  wire [31:0] fp6_io_in_b; // @[SoftMax.scala 52:21]
  wire [31:0] fp6_io_out_s; // @[SoftMax.scala 52:21]
  wire [31:0] fp7_io_in_a; // @[SoftMax.scala 57:21]
  wire [31:0] fp7_io_in_b; // @[SoftMax.scala 57:21]
  wire [31:0] fp7_io_out_s; // @[SoftMax.scala 57:21]
  wire [31:0] fp8_io_in_a; // @[SoftMax.scala 62:21]
  wire [31:0] fp8_io_in_b; // @[SoftMax.scala 62:21]
  wire [31:0] fp8_io_out_s; // @[SoftMax.scala 62:21]
  wire [31:0] fp9_io_in_a; // @[SoftMax.scala 67:21]
  wire [31:0] fp9_io_in_b; // @[SoftMax.scala 67:21]
  wire [31:0] fp9_io_out_s; // @[SoftMax.scala 67:21]
  reg [3:0] Digit; // @[SoftMax.scala 25:20]
  wire [31:0] maximum = fp9_io_out_s; // @[SoftMax.scala 22:23 70:13]
  wire [3:0] _GEN_0 = maximum == io_input_8 ? 4'h8 : 4'h9; // @[SoftMax.scala 92:44 93:18 95:18]
  wire [3:0] _GEN_1 = maximum == io_input_7 ? 4'h7 : _GEN_0; // @[SoftMax.scala 90:44 91:18]
  wire [3:0] _GEN_2 = maximum == io_input_6 ? 4'h6 : _GEN_1; // @[SoftMax.scala 88:44 89:18]
  wire [3:0] _GEN_3 = maximum == io_input_5 ? 4'h5 : _GEN_2; // @[SoftMax.scala 86:44 87:18]
  wire [3:0] _GEN_4 = maximum == io_input_4 ? 4'h4 : _GEN_3; // @[SoftMax.scala 84:44 85:18]
  FP_Comparitor fp1 ( // @[SoftMax.scala 27:21]
    .io_in_a(fp1_io_in_a),
    .io_in_b(fp1_io_in_b),
    .io_out_s(fp1_io_out_s)
  );
  FP_Comparitor fp2 ( // @[SoftMax.scala 32:21]
    .io_in_a(fp2_io_in_a),
    .io_in_b(fp2_io_in_b),
    .io_out_s(fp2_io_out_s)
  );
  FP_Comparitor fp3 ( // @[SoftMax.scala 37:21]
    .io_in_a(fp3_io_in_a),
    .io_in_b(fp3_io_in_b),
    .io_out_s(fp3_io_out_s)
  );
  FP_Comparitor fp4 ( // @[SoftMax.scala 42:21]
    .io_in_a(fp4_io_in_a),
    .io_in_b(fp4_io_in_b),
    .io_out_s(fp4_io_out_s)
  );
  FP_Comparitor fp5 ( // @[SoftMax.scala 47:21]
    .io_in_a(fp5_io_in_a),
    .io_in_b(fp5_io_in_b),
    .io_out_s(fp5_io_out_s)
  );
  FP_Comparitor fp6 ( // @[SoftMax.scala 52:21]
    .io_in_a(fp6_io_in_a),
    .io_in_b(fp6_io_in_b),
    .io_out_s(fp6_io_out_s)
  );
  FP_Comparitor fp7 ( // @[SoftMax.scala 57:21]
    .io_in_a(fp7_io_in_a),
    .io_in_b(fp7_io_in_b),
    .io_out_s(fp7_io_out_s)
  );
  FP_Comparitor fp8 ( // @[SoftMax.scala 62:21]
    .io_in_a(fp8_io_in_a),
    .io_in_b(fp8_io_in_b),
    .io_out_s(fp8_io_out_s)
  );
  FP_Comparitor fp9 ( // @[SoftMax.scala 67:21]
    .io_in_a(fp9_io_in_a),
    .io_in_b(fp9_io_in_b),
    .io_out_s(fp9_io_out_s)
  );
  assign io_Digit = Digit; // @[SoftMax.scala 98:14]
  assign fp1_io_in_a = io_input_0; // @[SoftMax.scala 28:17]
  assign fp1_io_in_b = io_input_1; // @[SoftMax.scala 29:17]
  assign fp2_io_in_a = io_input_2; // @[SoftMax.scala 33:17]
  assign fp2_io_in_b = io_input_3; // @[SoftMax.scala 34:17]
  assign fp3_io_in_a = io_input_4; // @[SoftMax.scala 38:17]
  assign fp3_io_in_b = io_input_5; // @[SoftMax.scala 39:17]
  assign fp4_io_in_a = io_input_6; // @[SoftMax.scala 43:17]
  assign fp4_io_in_b = io_input_7; // @[SoftMax.scala 44:17]
  assign fp5_io_in_a = io_input_8; // @[SoftMax.scala 48:17]
  assign fp5_io_in_b = io_input_9; // @[SoftMax.scala 49:17]
  assign fp6_io_in_a = fp1_io_out_s; // @[SoftMax.scala 14:20 30:10]
  assign fp6_io_in_b = fp2_io_out_s; // @[SoftMax.scala 15:20 35:10]
  assign fp7_io_in_a = fp3_io_out_s; // @[SoftMax.scala 16:20 40:10]
  assign fp7_io_in_b = fp4_io_out_s; // @[SoftMax.scala 17:20 45:10]
  assign fp8_io_in_a = fp6_io_out_s; // @[SoftMax.scala 19:20 55:10]
  assign fp8_io_in_b = fp7_io_out_s; // @[SoftMax.scala 20:20 60:10]
  assign fp9_io_in_a = fp8_io_out_s; // @[SoftMax.scala 21:20 65:10]
  assign fp9_io_in_b = fp5_io_out_s; // @[SoftMax.scala 18:20 50:10]
  always @(posedge clock) begin
    if (maximum == io_input_0) begin // @[SoftMax.scala 76:36]
      Digit <= 4'h0; // @[SoftMax.scala 77:18]
    end else if (maximum == io_input_1) begin // @[SoftMax.scala 78:44]
      Digit <= 4'h1; // @[SoftMax.scala 79:18]
    end else if (maximum == io_input_2) begin // @[SoftMax.scala 80:44]
      Digit <= 4'h2; // @[SoftMax.scala 81:18]
    end else if (maximum == io_input_3) begin // @[SoftMax.scala 82:44]
      Digit <= 4'h3; // @[SoftMax.scala 83:18]
    end else begin
      Digit <= _GEN_4;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  Digit = _RAND_0[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CNNEngine(
  input         clock,
  input         reset,
  input  [31:0] io_inputA_0,
  input  [31:0] io_inputA_1,
  input  [31:0] io_inputA_2,
  input  [31:0] io_inputA_3,
  input  [31:0] io_inputA_4,
  input  [31:0] io_inputA_5,
  input  [31:0] io_inputA_6,
  input  [31:0] io_inputA_7,
  input  [31:0] io_inputA_8,
  input  [31:0] io_inputB_0,
  input  [31:0] io_inputB_1,
  input  [31:0] io_inputB_2,
  input  [31:0] io_inputB_3,
  input  [31:0] io_inputB_4,
  input  [31:0] io_inputB_5,
  input  [31:0] io_inputB_6,
  input  [31:0] io_inputB_7,
  input  [31:0] io_inputB_8,
  input  [2:0]  io_DemuxSel0,
  input  [2:0]  io_DemuxSel,
  input         io_DemuxEn0_0,
  input         io_DemuxEn0_1,
  input         io_DemuxEn0_2,
  input         io_DemuxEn0_3,
  input         io_DemuxEn0_4,
  input         io_DemuxEn0_5,
  input         io_DemuxEn0_6,
  input         io_DemuxEn0_7,
  input         io_DemuxEn_0,
  input         io_DemuxEn_1,
  input         io_DemuxEn_2,
  input         io_DemuxEn_3,
  input         io_DemuxEn_4,
  input         io_DemuxEn_5,
  input         io_DemuxEn_6,
  input         io_DemuxEn_7,
  input         io_DemuxEn_8,
  input         io_DemuxEn_9,
  input         io_DemuxEn_10,
  input         io_DemuxEn_11,
  input         io_DemuxEn_12,
  input         io_DemuxEn_13,
  input         io_DemuxEn_14,
  input         io_DemuxEn_15,
  input         io_DemuxEn_16,
  input         io_DemuxEn_17,
  input         io_DemuxEn_18,
  input         io_DemuxEn_19,
  input         io_DemuxEn_20,
  input         io_DemuxEn_21,
  input         io_DemuxEn_22,
  input         io_DemuxEn_23,
  input         io_DemuxEn_24,
  input         io_DemuxEn_25,
  input         io_DemuxEn_26,
  input         io_DemuxEn_27,
  input         io_DemuxEn_28,
  input         io_DemuxEn_29,
  input         io_DemuxEn_30,
  input         io_DemuxEn_31,
  input         io_DemuxEn_32,
  input         io_DemuxEn_33,
  input         io_DemuxEn_34,
  input         io_DemuxEn_35,
  input         io_DemuxEn_36,
  input         io_DemuxEn_37,
  input         io_DemuxEn_38,
  input         io_DemuxEn_39,
  input         io_DemuxEn_40,
  input         io_DemuxEn_41,
  input         io_DemuxEn_42,
  input         io_DemuxEn_43,
  input         io_DemuxEn_44,
  input         io_DemuxEn_45,
  input         io_DemuxEn_46,
  input         io_DemuxEn_47,
  input         io_DemuxEn_48,
  input         io_DemuxEn_49,
  input         io_DemuxEn_50,
  input         io_DemuxEn_51,
  input         io_DemuxEn_52,
  input         io_DemuxEn_53,
  input         io_DemuxEn_54,
  input         io_DemuxEn_55,
  input         io_DemuxEn_56,
  input         io_DemuxEn_57,
  input         io_DemuxEn_58,
  input         io_DemuxEn_59,
  input         io_DemuxEn_60,
  input         io_DemuxEn_61,
  input         io_DemuxEn_62,
  input         io_DemuxEn_63,
  input  [1:0]  io_FCMuxSel,
  input         io_FCDemuxEn_0,
  input         io_FCDemuxEn_1,
  input         io_FCDemuxEn_2,
  input         io_FCDemuxEn_3,
  output [3:0]  io_Digit
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
`endif // RANDOMIZE_REG_INIT
  wire  MatrixMuls_0_clock; // @[NeuralNetwork.scala 48:29]
  wire  MatrixMuls_0_reset; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matA_0; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matA_1; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matA_2; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matA_3; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matA_4; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matA_5; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matA_6; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matA_7; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matA_8; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matB_0; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matB_1; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matB_2; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matB_3; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matB_4; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matB_5; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matB_6; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matB_7; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_matB_8; // @[NeuralNetwork.scala 48:29]
  wire [31:0] MatrixMuls_0_io_f_mac; // @[NeuralNetwork.scala 48:29]
  wire  demuxinst0_0_clock; // @[NeuralNetwork.scala 59:26]
  wire [31:0] demuxinst0_0_io_in; // @[NeuralNetwork.scala 59:26]
  wire [2:0] demuxinst0_0_io_sel; // @[NeuralNetwork.scala 59:26]
  wire  demuxinst0_0_io_enable_0; // @[NeuralNetwork.scala 59:26]
  wire  demuxinst0_0_io_enable_1; // @[NeuralNetwork.scala 59:26]
  wire  demuxinst0_0_io_enable_2; // @[NeuralNetwork.scala 59:26]
  wire  demuxinst0_0_io_enable_3; // @[NeuralNetwork.scala 59:26]
  wire  demuxinst0_0_io_enable_4; // @[NeuralNetwork.scala 59:26]
  wire  demuxinst0_0_io_enable_5; // @[NeuralNetwork.scala 59:26]
  wire  demuxinst0_0_io_enable_6; // @[NeuralNetwork.scala 59:26]
  wire  demuxinst0_0_io_enable_7; // @[NeuralNetwork.scala 59:26]
  wire [31:0] demuxinst0_0_io_out_0; // @[NeuralNetwork.scala 59:26]
  wire [31:0] demuxinst0_0_io_out_1; // @[NeuralNetwork.scala 59:26]
  wire [31:0] demuxinst0_0_io_out_2; // @[NeuralNetwork.scala 59:26]
  wire [31:0] demuxinst0_0_io_out_3; // @[NeuralNetwork.scala 59:26]
  wire [31:0] demuxinst0_0_io_out_4; // @[NeuralNetwork.scala 59:26]
  wire [31:0] demuxinst0_0_io_out_5; // @[NeuralNetwork.scala 59:26]
  wire [31:0] demuxinst0_0_io_out_6; // @[NeuralNetwork.scala 59:26]
  wire [31:0] demuxinst0_0_io_out_7; // @[NeuralNetwork.scala 59:26]
  wire  demuxinst1_0_clock; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_0_io_in; // @[NeuralNetwork.scala 65:25]
  wire [2:0] demuxinst1_0_io_sel; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_0_io_enable_0; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_0_io_enable_1; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_0_io_enable_2; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_0_io_enable_3; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_0_io_enable_4; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_0_io_enable_5; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_0_io_enable_6; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_0_io_enable_7; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_0_io_out_0; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_0_io_out_1; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_0_io_out_2; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_0_io_out_3; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_0_io_out_4; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_0_io_out_5; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_0_io_out_6; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_0_io_out_7; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_1_clock; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_1_io_in; // @[NeuralNetwork.scala 65:25]
  wire [2:0] demuxinst1_1_io_sel; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_1_io_enable_0; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_1_io_enable_1; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_1_io_enable_2; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_1_io_enable_3; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_1_io_enable_4; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_1_io_enable_5; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_1_io_enable_6; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_1_io_enable_7; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_1_io_out_0; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_1_io_out_1; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_1_io_out_2; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_1_io_out_3; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_1_io_out_4; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_1_io_out_5; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_1_io_out_6; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_1_io_out_7; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_2_clock; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_2_io_in; // @[NeuralNetwork.scala 65:25]
  wire [2:0] demuxinst1_2_io_sel; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_2_io_enable_0; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_2_io_enable_1; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_2_io_enable_2; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_2_io_enable_3; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_2_io_enable_4; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_2_io_enable_5; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_2_io_enable_6; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_2_io_enable_7; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_2_io_out_0; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_2_io_out_1; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_2_io_out_2; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_2_io_out_3; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_2_io_out_4; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_2_io_out_5; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_2_io_out_6; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_2_io_out_7; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_3_clock; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_3_io_in; // @[NeuralNetwork.scala 65:25]
  wire [2:0] demuxinst1_3_io_sel; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_3_io_enable_0; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_3_io_enable_1; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_3_io_enable_2; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_3_io_enable_3; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_3_io_enable_4; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_3_io_enable_5; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_3_io_enable_6; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_3_io_enable_7; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_3_io_out_0; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_3_io_out_1; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_3_io_out_2; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_3_io_out_3; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_3_io_out_4; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_3_io_out_5; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_3_io_out_6; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_3_io_out_7; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_4_clock; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_4_io_in; // @[NeuralNetwork.scala 65:25]
  wire [2:0] demuxinst1_4_io_sel; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_4_io_enable_0; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_4_io_enable_1; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_4_io_enable_2; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_4_io_enable_3; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_4_io_enable_4; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_4_io_enable_5; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_4_io_enable_6; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_4_io_enable_7; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_4_io_out_0; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_4_io_out_1; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_4_io_out_2; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_4_io_out_3; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_4_io_out_4; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_4_io_out_5; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_4_io_out_6; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_4_io_out_7; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_5_clock; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_5_io_in; // @[NeuralNetwork.scala 65:25]
  wire [2:0] demuxinst1_5_io_sel; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_5_io_enable_0; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_5_io_enable_1; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_5_io_enable_2; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_5_io_enable_3; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_5_io_enable_4; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_5_io_enable_5; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_5_io_enable_6; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_5_io_enable_7; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_5_io_out_0; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_5_io_out_1; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_5_io_out_2; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_5_io_out_3; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_5_io_out_4; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_5_io_out_5; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_5_io_out_6; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_5_io_out_7; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_6_clock; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_6_io_in; // @[NeuralNetwork.scala 65:25]
  wire [2:0] demuxinst1_6_io_sel; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_6_io_enable_0; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_6_io_enable_1; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_6_io_enable_2; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_6_io_enable_3; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_6_io_enable_4; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_6_io_enable_5; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_6_io_enable_6; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_6_io_enable_7; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_6_io_out_0; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_6_io_out_1; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_6_io_out_2; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_6_io_out_3; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_6_io_out_4; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_6_io_out_5; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_6_io_out_6; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_6_io_out_7; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_7_clock; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_7_io_in; // @[NeuralNetwork.scala 65:25]
  wire [2:0] demuxinst1_7_io_sel; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_7_io_enable_0; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_7_io_enable_1; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_7_io_enable_2; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_7_io_enable_3; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_7_io_enable_4; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_7_io_enable_5; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_7_io_enable_6; // @[NeuralNetwork.scala 65:25]
  wire  demuxinst1_7_io_enable_7; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_7_io_out_0; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_7_io_out_1; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_7_io_out_2; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_7_io_out_3; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_7_io_out_4; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_7_io_out_5; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_7_io_out_6; // @[NeuralNetwork.scala 65:25]
  wire [31:0] demuxinst1_7_io_out_7; // @[NeuralNetwork.scala 65:25]
  wire [31:0] PoolingControl_io_InputMatrix_0; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_1; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_2; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_3; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_4; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_5; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_6; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_7; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_8; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_9; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_10; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_11; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_12; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_13; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_14; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_15; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_16; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_17; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_18; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_19; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_20; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_21; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_22; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_23; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_24; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_25; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_26; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_27; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_28; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_29; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_30; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_31; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_32; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_33; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_34; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_35; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_36; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_37; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_38; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_39; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_40; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_41; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_42; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_43; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_44; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_45; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_46; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_47; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_48; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_49; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_50; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_51; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_52; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_53; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_54; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_55; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_56; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_57; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_58; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_59; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_60; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_61; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_62; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_InputMatrix_63; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_single_out_0; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_single_out_1; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_single_out_2; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_single_out_3; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_single_out_4; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_single_out_5; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_single_out_6; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_single_out_7; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_single_out_8; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_single_out_9; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_single_out_10; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_single_out_11; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_single_out_12; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_single_out_13; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_single_out_14; // @[NeuralNetwork.scala 99:32]
  wire [31:0] PoolingControl_io_single_out_15; // @[NeuralNetwork.scala 99:32]
  wire  FullyConnected_clock; // @[NeuralNetwork.scala 108:32]
  wire  FullyConnected_reset; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_matB_0; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_matB_1; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_matB_2; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_matB_3; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_matB_4; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_matB_5; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_matB_6; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_matB_7; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_matB_8; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_matB_9; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_matB_10; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_matB_11; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_matB_12; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_matB_13; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_matB_14; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_matB_15; // @[NeuralNetwork.scala 108:32]
  wire [1:0] FullyConnected_io_MuxSel; // @[NeuralNetwork.scala 108:32]
  wire  FullyConnected_io_DemuxEn_0; // @[NeuralNetwork.scala 108:32]
  wire  FullyConnected_io_DemuxEn_1; // @[NeuralNetwork.scala 108:32]
  wire  FullyConnected_io_DemuxEn_2; // @[NeuralNetwork.scala 108:32]
  wire  FullyConnected_io_DemuxEn_3; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_fC_out_0; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_fC_out_1; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_fC_out_2; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_fC_out_3; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_fC_out_4; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_fC_out_5; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_fC_out_6; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_fC_out_7; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_fC_out_8; // @[NeuralNetwork.scala 108:32]
  wire [31:0] FullyConnected_io_fC_out_9; // @[NeuralNetwork.scala 108:32]
  wire  SoftMaxModule_clock; // @[NeuralNetwork.scala 126:31]
  wire [31:0] SoftMaxModule_io_input_0; // @[NeuralNetwork.scala 126:31]
  wire [31:0] SoftMaxModule_io_input_1; // @[NeuralNetwork.scala 126:31]
  wire [31:0] SoftMaxModule_io_input_2; // @[NeuralNetwork.scala 126:31]
  wire [31:0] SoftMaxModule_io_input_3; // @[NeuralNetwork.scala 126:31]
  wire [31:0] SoftMaxModule_io_input_4; // @[NeuralNetwork.scala 126:31]
  wire [31:0] SoftMaxModule_io_input_5; // @[NeuralNetwork.scala 126:31]
  wire [31:0] SoftMaxModule_io_input_6; // @[NeuralNetwork.scala 126:31]
  wire [31:0] SoftMaxModule_io_input_7; // @[NeuralNetwork.scala 126:31]
  wire [31:0] SoftMaxModule_io_input_8; // @[NeuralNetwork.scala 126:31]
  wire [31:0] SoftMaxModule_io_input_9; // @[NeuralNetwork.scala 126:31]
  wire [3:0] SoftMaxModule_io_Digit; // @[NeuralNetwork.scala 126:31]
  reg [31:0] reginA_0; // @[NeuralNetwork.scala 43:21]
  reg [31:0] reginA_1; // @[NeuralNetwork.scala 43:21]
  reg [31:0] reginA_2; // @[NeuralNetwork.scala 43:21]
  reg [31:0] reginA_3; // @[NeuralNetwork.scala 43:21]
  reg [31:0] reginA_4; // @[NeuralNetwork.scala 43:21]
  reg [31:0] reginA_5; // @[NeuralNetwork.scala 43:21]
  reg [31:0] reginA_6; // @[NeuralNetwork.scala 43:21]
  reg [31:0] reginA_7; // @[NeuralNetwork.scala 43:21]
  reg [31:0] reginA_8; // @[NeuralNetwork.scala 43:21]
  reg [31:0] reginB_0; // @[NeuralNetwork.scala 44:21]
  reg [31:0] reginB_1; // @[NeuralNetwork.scala 44:21]
  reg [31:0] reginB_2; // @[NeuralNetwork.scala 44:21]
  reg [31:0] reginB_3; // @[NeuralNetwork.scala 44:21]
  reg [31:0] reginB_4; // @[NeuralNetwork.scala 44:21]
  reg [31:0] reginB_5; // @[NeuralNetwork.scala 44:21]
  reg [31:0] reginB_6; // @[NeuralNetwork.scala 44:21]
  reg [31:0] reginB_7; // @[NeuralNetwork.scala 44:21]
  reg [31:0] reginB_8; // @[NeuralNetwork.scala 44:21]
  MatMult1 MatrixMuls_0 ( // @[NeuralNetwork.scala 48:29]
    .clock(MatrixMuls_0_clock),
    .reset(MatrixMuls_0_reset),
    .io_matA_0(MatrixMuls_0_io_matA_0),
    .io_matA_1(MatrixMuls_0_io_matA_1),
    .io_matA_2(MatrixMuls_0_io_matA_2),
    .io_matA_3(MatrixMuls_0_io_matA_3),
    .io_matA_4(MatrixMuls_0_io_matA_4),
    .io_matA_5(MatrixMuls_0_io_matA_5),
    .io_matA_6(MatrixMuls_0_io_matA_6),
    .io_matA_7(MatrixMuls_0_io_matA_7),
    .io_matA_8(MatrixMuls_0_io_matA_8),
    .io_matB_0(MatrixMuls_0_io_matB_0),
    .io_matB_1(MatrixMuls_0_io_matB_1),
    .io_matB_2(MatrixMuls_0_io_matB_2),
    .io_matB_3(MatrixMuls_0_io_matB_3),
    .io_matB_4(MatrixMuls_0_io_matB_4),
    .io_matB_5(MatrixMuls_0_io_matB_5),
    .io_matB_6(MatrixMuls_0_io_matB_6),
    .io_matB_7(MatrixMuls_0_io_matB_7),
    .io_matB_8(MatrixMuls_0_io_matB_8),
    .io_f_mac(MatrixMuls_0_io_f_mac)
  );
  demux1_8 demuxinst0_0 ( // @[NeuralNetwork.scala 59:26]
    .clock(demuxinst0_0_clock),
    .io_in(demuxinst0_0_io_in),
    .io_sel(demuxinst0_0_io_sel),
    .io_enable_0(demuxinst0_0_io_enable_0),
    .io_enable_1(demuxinst0_0_io_enable_1),
    .io_enable_2(demuxinst0_0_io_enable_2),
    .io_enable_3(demuxinst0_0_io_enable_3),
    .io_enable_4(demuxinst0_0_io_enable_4),
    .io_enable_5(demuxinst0_0_io_enable_5),
    .io_enable_6(demuxinst0_0_io_enable_6),
    .io_enable_7(demuxinst0_0_io_enable_7),
    .io_out_0(demuxinst0_0_io_out_0),
    .io_out_1(demuxinst0_0_io_out_1),
    .io_out_2(demuxinst0_0_io_out_2),
    .io_out_3(demuxinst0_0_io_out_3),
    .io_out_4(demuxinst0_0_io_out_4),
    .io_out_5(demuxinst0_0_io_out_5),
    .io_out_6(demuxinst0_0_io_out_6),
    .io_out_7(demuxinst0_0_io_out_7)
  );
  demux1_8 demuxinst1_0 ( // @[NeuralNetwork.scala 65:25]
    .clock(demuxinst1_0_clock),
    .io_in(demuxinst1_0_io_in),
    .io_sel(demuxinst1_0_io_sel),
    .io_enable_0(demuxinst1_0_io_enable_0),
    .io_enable_1(demuxinst1_0_io_enable_1),
    .io_enable_2(demuxinst1_0_io_enable_2),
    .io_enable_3(demuxinst1_0_io_enable_3),
    .io_enable_4(demuxinst1_0_io_enable_4),
    .io_enable_5(demuxinst1_0_io_enable_5),
    .io_enable_6(demuxinst1_0_io_enable_6),
    .io_enable_7(demuxinst1_0_io_enable_7),
    .io_out_0(demuxinst1_0_io_out_0),
    .io_out_1(demuxinst1_0_io_out_1),
    .io_out_2(demuxinst1_0_io_out_2),
    .io_out_3(demuxinst1_0_io_out_3),
    .io_out_4(demuxinst1_0_io_out_4),
    .io_out_5(demuxinst1_0_io_out_5),
    .io_out_6(demuxinst1_0_io_out_6),
    .io_out_7(demuxinst1_0_io_out_7)
  );
  demux1_8 demuxinst1_1 ( // @[NeuralNetwork.scala 65:25]
    .clock(demuxinst1_1_clock),
    .io_in(demuxinst1_1_io_in),
    .io_sel(demuxinst1_1_io_sel),
    .io_enable_0(demuxinst1_1_io_enable_0),
    .io_enable_1(demuxinst1_1_io_enable_1),
    .io_enable_2(demuxinst1_1_io_enable_2),
    .io_enable_3(demuxinst1_1_io_enable_3),
    .io_enable_4(demuxinst1_1_io_enable_4),
    .io_enable_5(demuxinst1_1_io_enable_5),
    .io_enable_6(demuxinst1_1_io_enable_6),
    .io_enable_7(demuxinst1_1_io_enable_7),
    .io_out_0(demuxinst1_1_io_out_0),
    .io_out_1(demuxinst1_1_io_out_1),
    .io_out_2(demuxinst1_1_io_out_2),
    .io_out_3(demuxinst1_1_io_out_3),
    .io_out_4(demuxinst1_1_io_out_4),
    .io_out_5(demuxinst1_1_io_out_5),
    .io_out_6(demuxinst1_1_io_out_6),
    .io_out_7(demuxinst1_1_io_out_7)
  );
  demux1_8 demuxinst1_2 ( // @[NeuralNetwork.scala 65:25]
    .clock(demuxinst1_2_clock),
    .io_in(demuxinst1_2_io_in),
    .io_sel(demuxinst1_2_io_sel),
    .io_enable_0(demuxinst1_2_io_enable_0),
    .io_enable_1(demuxinst1_2_io_enable_1),
    .io_enable_2(demuxinst1_2_io_enable_2),
    .io_enable_3(demuxinst1_2_io_enable_3),
    .io_enable_4(demuxinst1_2_io_enable_4),
    .io_enable_5(demuxinst1_2_io_enable_5),
    .io_enable_6(demuxinst1_2_io_enable_6),
    .io_enable_7(demuxinst1_2_io_enable_7),
    .io_out_0(demuxinst1_2_io_out_0),
    .io_out_1(demuxinst1_2_io_out_1),
    .io_out_2(demuxinst1_2_io_out_2),
    .io_out_3(demuxinst1_2_io_out_3),
    .io_out_4(demuxinst1_2_io_out_4),
    .io_out_5(demuxinst1_2_io_out_5),
    .io_out_6(demuxinst1_2_io_out_6),
    .io_out_7(demuxinst1_2_io_out_7)
  );
  demux1_8 demuxinst1_3 ( // @[NeuralNetwork.scala 65:25]
    .clock(demuxinst1_3_clock),
    .io_in(demuxinst1_3_io_in),
    .io_sel(demuxinst1_3_io_sel),
    .io_enable_0(demuxinst1_3_io_enable_0),
    .io_enable_1(demuxinst1_3_io_enable_1),
    .io_enable_2(demuxinst1_3_io_enable_2),
    .io_enable_3(demuxinst1_3_io_enable_3),
    .io_enable_4(demuxinst1_3_io_enable_4),
    .io_enable_5(demuxinst1_3_io_enable_5),
    .io_enable_6(demuxinst1_3_io_enable_6),
    .io_enable_7(demuxinst1_3_io_enable_7),
    .io_out_0(demuxinst1_3_io_out_0),
    .io_out_1(demuxinst1_3_io_out_1),
    .io_out_2(demuxinst1_3_io_out_2),
    .io_out_3(demuxinst1_3_io_out_3),
    .io_out_4(demuxinst1_3_io_out_4),
    .io_out_5(demuxinst1_3_io_out_5),
    .io_out_6(demuxinst1_3_io_out_6),
    .io_out_7(demuxinst1_3_io_out_7)
  );
  demux1_8 demuxinst1_4 ( // @[NeuralNetwork.scala 65:25]
    .clock(demuxinst1_4_clock),
    .io_in(demuxinst1_4_io_in),
    .io_sel(demuxinst1_4_io_sel),
    .io_enable_0(demuxinst1_4_io_enable_0),
    .io_enable_1(demuxinst1_4_io_enable_1),
    .io_enable_2(demuxinst1_4_io_enable_2),
    .io_enable_3(demuxinst1_4_io_enable_3),
    .io_enable_4(demuxinst1_4_io_enable_4),
    .io_enable_5(demuxinst1_4_io_enable_5),
    .io_enable_6(demuxinst1_4_io_enable_6),
    .io_enable_7(demuxinst1_4_io_enable_7),
    .io_out_0(demuxinst1_4_io_out_0),
    .io_out_1(demuxinst1_4_io_out_1),
    .io_out_2(demuxinst1_4_io_out_2),
    .io_out_3(demuxinst1_4_io_out_3),
    .io_out_4(demuxinst1_4_io_out_4),
    .io_out_5(demuxinst1_4_io_out_5),
    .io_out_6(demuxinst1_4_io_out_6),
    .io_out_7(demuxinst1_4_io_out_7)
  );
  demux1_8 demuxinst1_5 ( // @[NeuralNetwork.scala 65:25]
    .clock(demuxinst1_5_clock),
    .io_in(demuxinst1_5_io_in),
    .io_sel(demuxinst1_5_io_sel),
    .io_enable_0(demuxinst1_5_io_enable_0),
    .io_enable_1(demuxinst1_5_io_enable_1),
    .io_enable_2(demuxinst1_5_io_enable_2),
    .io_enable_3(demuxinst1_5_io_enable_3),
    .io_enable_4(demuxinst1_5_io_enable_4),
    .io_enable_5(demuxinst1_5_io_enable_5),
    .io_enable_6(demuxinst1_5_io_enable_6),
    .io_enable_7(demuxinst1_5_io_enable_7),
    .io_out_0(demuxinst1_5_io_out_0),
    .io_out_1(demuxinst1_5_io_out_1),
    .io_out_2(demuxinst1_5_io_out_2),
    .io_out_3(demuxinst1_5_io_out_3),
    .io_out_4(demuxinst1_5_io_out_4),
    .io_out_5(demuxinst1_5_io_out_5),
    .io_out_6(demuxinst1_5_io_out_6),
    .io_out_7(demuxinst1_5_io_out_7)
  );
  demux1_8 demuxinst1_6 ( // @[NeuralNetwork.scala 65:25]
    .clock(demuxinst1_6_clock),
    .io_in(demuxinst1_6_io_in),
    .io_sel(demuxinst1_6_io_sel),
    .io_enable_0(demuxinst1_6_io_enable_0),
    .io_enable_1(demuxinst1_6_io_enable_1),
    .io_enable_2(demuxinst1_6_io_enable_2),
    .io_enable_3(demuxinst1_6_io_enable_3),
    .io_enable_4(demuxinst1_6_io_enable_4),
    .io_enable_5(demuxinst1_6_io_enable_5),
    .io_enable_6(demuxinst1_6_io_enable_6),
    .io_enable_7(demuxinst1_6_io_enable_7),
    .io_out_0(demuxinst1_6_io_out_0),
    .io_out_1(demuxinst1_6_io_out_1),
    .io_out_2(demuxinst1_6_io_out_2),
    .io_out_3(demuxinst1_6_io_out_3),
    .io_out_4(demuxinst1_6_io_out_4),
    .io_out_5(demuxinst1_6_io_out_5),
    .io_out_6(demuxinst1_6_io_out_6),
    .io_out_7(demuxinst1_6_io_out_7)
  );
  demux1_8 demuxinst1_7 ( // @[NeuralNetwork.scala 65:25]
    .clock(demuxinst1_7_clock),
    .io_in(demuxinst1_7_io_in),
    .io_sel(demuxinst1_7_io_sel),
    .io_enable_0(demuxinst1_7_io_enable_0),
    .io_enable_1(demuxinst1_7_io_enable_1),
    .io_enable_2(demuxinst1_7_io_enable_2),
    .io_enable_3(demuxinst1_7_io_enable_3),
    .io_enable_4(demuxinst1_7_io_enable_4),
    .io_enable_5(demuxinst1_7_io_enable_5),
    .io_enable_6(demuxinst1_7_io_enable_6),
    .io_enable_7(demuxinst1_7_io_enable_7),
    .io_out_0(demuxinst1_7_io_out_0),
    .io_out_1(demuxinst1_7_io_out_1),
    .io_out_2(demuxinst1_7_io_out_2),
    .io_out_3(demuxinst1_7_io_out_3),
    .io_out_4(demuxinst1_7_io_out_4),
    .io_out_5(demuxinst1_7_io_out_5),
    .io_out_6(demuxinst1_7_io_out_6),
    .io_out_7(demuxinst1_7_io_out_7)
  );
  Pooling_Controller PoolingControl ( // @[NeuralNetwork.scala 99:32]
    .io_InputMatrix_0(PoolingControl_io_InputMatrix_0),
    .io_InputMatrix_1(PoolingControl_io_InputMatrix_1),
    .io_InputMatrix_2(PoolingControl_io_InputMatrix_2),
    .io_InputMatrix_3(PoolingControl_io_InputMatrix_3),
    .io_InputMatrix_4(PoolingControl_io_InputMatrix_4),
    .io_InputMatrix_5(PoolingControl_io_InputMatrix_5),
    .io_InputMatrix_6(PoolingControl_io_InputMatrix_6),
    .io_InputMatrix_7(PoolingControl_io_InputMatrix_7),
    .io_InputMatrix_8(PoolingControl_io_InputMatrix_8),
    .io_InputMatrix_9(PoolingControl_io_InputMatrix_9),
    .io_InputMatrix_10(PoolingControl_io_InputMatrix_10),
    .io_InputMatrix_11(PoolingControl_io_InputMatrix_11),
    .io_InputMatrix_12(PoolingControl_io_InputMatrix_12),
    .io_InputMatrix_13(PoolingControl_io_InputMatrix_13),
    .io_InputMatrix_14(PoolingControl_io_InputMatrix_14),
    .io_InputMatrix_15(PoolingControl_io_InputMatrix_15),
    .io_InputMatrix_16(PoolingControl_io_InputMatrix_16),
    .io_InputMatrix_17(PoolingControl_io_InputMatrix_17),
    .io_InputMatrix_18(PoolingControl_io_InputMatrix_18),
    .io_InputMatrix_19(PoolingControl_io_InputMatrix_19),
    .io_InputMatrix_20(PoolingControl_io_InputMatrix_20),
    .io_InputMatrix_21(PoolingControl_io_InputMatrix_21),
    .io_InputMatrix_22(PoolingControl_io_InputMatrix_22),
    .io_InputMatrix_23(PoolingControl_io_InputMatrix_23),
    .io_InputMatrix_24(PoolingControl_io_InputMatrix_24),
    .io_InputMatrix_25(PoolingControl_io_InputMatrix_25),
    .io_InputMatrix_26(PoolingControl_io_InputMatrix_26),
    .io_InputMatrix_27(PoolingControl_io_InputMatrix_27),
    .io_InputMatrix_28(PoolingControl_io_InputMatrix_28),
    .io_InputMatrix_29(PoolingControl_io_InputMatrix_29),
    .io_InputMatrix_30(PoolingControl_io_InputMatrix_30),
    .io_InputMatrix_31(PoolingControl_io_InputMatrix_31),
    .io_InputMatrix_32(PoolingControl_io_InputMatrix_32),
    .io_InputMatrix_33(PoolingControl_io_InputMatrix_33),
    .io_InputMatrix_34(PoolingControl_io_InputMatrix_34),
    .io_InputMatrix_35(PoolingControl_io_InputMatrix_35),
    .io_InputMatrix_36(PoolingControl_io_InputMatrix_36),
    .io_InputMatrix_37(PoolingControl_io_InputMatrix_37),
    .io_InputMatrix_38(PoolingControl_io_InputMatrix_38),
    .io_InputMatrix_39(PoolingControl_io_InputMatrix_39),
    .io_InputMatrix_40(PoolingControl_io_InputMatrix_40),
    .io_InputMatrix_41(PoolingControl_io_InputMatrix_41),
    .io_InputMatrix_42(PoolingControl_io_InputMatrix_42),
    .io_InputMatrix_43(PoolingControl_io_InputMatrix_43),
    .io_InputMatrix_44(PoolingControl_io_InputMatrix_44),
    .io_InputMatrix_45(PoolingControl_io_InputMatrix_45),
    .io_InputMatrix_46(PoolingControl_io_InputMatrix_46),
    .io_InputMatrix_47(PoolingControl_io_InputMatrix_47),
    .io_InputMatrix_48(PoolingControl_io_InputMatrix_48),
    .io_InputMatrix_49(PoolingControl_io_InputMatrix_49),
    .io_InputMatrix_50(PoolingControl_io_InputMatrix_50),
    .io_InputMatrix_51(PoolingControl_io_InputMatrix_51),
    .io_InputMatrix_52(PoolingControl_io_InputMatrix_52),
    .io_InputMatrix_53(PoolingControl_io_InputMatrix_53),
    .io_InputMatrix_54(PoolingControl_io_InputMatrix_54),
    .io_InputMatrix_55(PoolingControl_io_InputMatrix_55),
    .io_InputMatrix_56(PoolingControl_io_InputMatrix_56),
    .io_InputMatrix_57(PoolingControl_io_InputMatrix_57),
    .io_InputMatrix_58(PoolingControl_io_InputMatrix_58),
    .io_InputMatrix_59(PoolingControl_io_InputMatrix_59),
    .io_InputMatrix_60(PoolingControl_io_InputMatrix_60),
    .io_InputMatrix_61(PoolingControl_io_InputMatrix_61),
    .io_InputMatrix_62(PoolingControl_io_InputMatrix_62),
    .io_InputMatrix_63(PoolingControl_io_InputMatrix_63),
    .io_single_out_0(PoolingControl_io_single_out_0),
    .io_single_out_1(PoolingControl_io_single_out_1),
    .io_single_out_2(PoolingControl_io_single_out_2),
    .io_single_out_3(PoolingControl_io_single_out_3),
    .io_single_out_4(PoolingControl_io_single_out_4),
    .io_single_out_5(PoolingControl_io_single_out_5),
    .io_single_out_6(PoolingControl_io_single_out_6),
    .io_single_out_7(PoolingControl_io_single_out_7),
    .io_single_out_8(PoolingControl_io_single_out_8),
    .io_single_out_9(PoolingControl_io_single_out_9),
    .io_single_out_10(PoolingControl_io_single_out_10),
    .io_single_out_11(PoolingControl_io_single_out_11),
    .io_single_out_12(PoolingControl_io_single_out_12),
    .io_single_out_13(PoolingControl_io_single_out_13),
    .io_single_out_14(PoolingControl_io_single_out_14),
    .io_single_out_15(PoolingControl_io_single_out_15)
  );
  FC FullyConnected ( // @[NeuralNetwork.scala 108:32]
    .clock(FullyConnected_clock),
    .reset(FullyConnected_reset),
    .io_matB_0(FullyConnected_io_matB_0),
    .io_matB_1(FullyConnected_io_matB_1),
    .io_matB_2(FullyConnected_io_matB_2),
    .io_matB_3(FullyConnected_io_matB_3),
    .io_matB_4(FullyConnected_io_matB_4),
    .io_matB_5(FullyConnected_io_matB_5),
    .io_matB_6(FullyConnected_io_matB_6),
    .io_matB_7(FullyConnected_io_matB_7),
    .io_matB_8(FullyConnected_io_matB_8),
    .io_matB_9(FullyConnected_io_matB_9),
    .io_matB_10(FullyConnected_io_matB_10),
    .io_matB_11(FullyConnected_io_matB_11),
    .io_matB_12(FullyConnected_io_matB_12),
    .io_matB_13(FullyConnected_io_matB_13),
    .io_matB_14(FullyConnected_io_matB_14),
    .io_matB_15(FullyConnected_io_matB_15),
    .io_MuxSel(FullyConnected_io_MuxSel),
    .io_DemuxEn_0(FullyConnected_io_DemuxEn_0),
    .io_DemuxEn_1(FullyConnected_io_DemuxEn_1),
    .io_DemuxEn_2(FullyConnected_io_DemuxEn_2),
    .io_DemuxEn_3(FullyConnected_io_DemuxEn_3),
    .io_fC_out_0(FullyConnected_io_fC_out_0),
    .io_fC_out_1(FullyConnected_io_fC_out_1),
    .io_fC_out_2(FullyConnected_io_fC_out_2),
    .io_fC_out_3(FullyConnected_io_fC_out_3),
    .io_fC_out_4(FullyConnected_io_fC_out_4),
    .io_fC_out_5(FullyConnected_io_fC_out_5),
    .io_fC_out_6(FullyConnected_io_fC_out_6),
    .io_fC_out_7(FullyConnected_io_fC_out_7),
    .io_fC_out_8(FullyConnected_io_fC_out_8),
    .io_fC_out_9(FullyConnected_io_fC_out_9)
  );
  DigitPrediction SoftMaxModule ( // @[NeuralNetwork.scala 126:31]
    .clock(SoftMaxModule_clock),
    .io_input_0(SoftMaxModule_io_input_0),
    .io_input_1(SoftMaxModule_io_input_1),
    .io_input_2(SoftMaxModule_io_input_2),
    .io_input_3(SoftMaxModule_io_input_3),
    .io_input_4(SoftMaxModule_io_input_4),
    .io_input_5(SoftMaxModule_io_input_5),
    .io_input_6(SoftMaxModule_io_input_6),
    .io_input_7(SoftMaxModule_io_input_7),
    .io_input_8(SoftMaxModule_io_input_8),
    .io_input_9(SoftMaxModule_io_input_9),
    .io_Digit(SoftMaxModule_io_Digit)
  );
  assign io_Digit = SoftMaxModule_io_Digit; // @[NeuralNetwork.scala 131:14]
  assign MatrixMuls_0_clock = clock;
  assign MatrixMuls_0_reset = reset;
  assign MatrixMuls_0_io_matA_0 = reginA_0; // @[NeuralNetwork.scala 71:34]
  assign MatrixMuls_0_io_matA_1 = reginA_1; // @[NeuralNetwork.scala 71:34]
  assign MatrixMuls_0_io_matA_2 = reginA_2; // @[NeuralNetwork.scala 71:34]
  assign MatrixMuls_0_io_matA_3 = reginA_3; // @[NeuralNetwork.scala 71:34]
  assign MatrixMuls_0_io_matA_4 = reginA_4; // @[NeuralNetwork.scala 71:34]
  assign MatrixMuls_0_io_matA_5 = reginA_5; // @[NeuralNetwork.scala 71:34]
  assign MatrixMuls_0_io_matA_6 = reginA_6; // @[NeuralNetwork.scala 71:34]
  assign MatrixMuls_0_io_matA_7 = reginA_7; // @[NeuralNetwork.scala 71:34]
  assign MatrixMuls_0_io_matA_8 = reginA_8; // @[NeuralNetwork.scala 71:34]
  assign MatrixMuls_0_io_matB_0 = reginB_0; // @[NeuralNetwork.scala 72:34]
  assign MatrixMuls_0_io_matB_1 = reginB_1; // @[NeuralNetwork.scala 72:34]
  assign MatrixMuls_0_io_matB_2 = reginB_2; // @[NeuralNetwork.scala 72:34]
  assign MatrixMuls_0_io_matB_3 = reginB_3; // @[NeuralNetwork.scala 72:34]
  assign MatrixMuls_0_io_matB_4 = reginB_4; // @[NeuralNetwork.scala 72:34]
  assign MatrixMuls_0_io_matB_5 = reginB_5; // @[NeuralNetwork.scala 72:34]
  assign MatrixMuls_0_io_matB_6 = reginB_6; // @[NeuralNetwork.scala 72:34]
  assign MatrixMuls_0_io_matB_7 = reginB_7; // @[NeuralNetwork.scala 72:34]
  assign MatrixMuls_0_io_matB_8 = reginB_8; // @[NeuralNetwork.scala 72:34]
  assign demuxinst0_0_clock = clock;
  assign demuxinst0_0_io_in = MatrixMuls_0_io_f_mac; // @[NeuralNetwork.scala 76:26]
  assign demuxinst0_0_io_sel = io_DemuxSel0; // @[NeuralNetwork.scala 77:27]
  assign demuxinst0_0_io_enable_0 = io_DemuxEn0_0; // @[NeuralNetwork.scala 88:33]
  assign demuxinst0_0_io_enable_1 = io_DemuxEn0_1; // @[NeuralNetwork.scala 88:33]
  assign demuxinst0_0_io_enable_2 = io_DemuxEn0_2; // @[NeuralNetwork.scala 88:33]
  assign demuxinst0_0_io_enable_3 = io_DemuxEn0_3; // @[NeuralNetwork.scala 88:33]
  assign demuxinst0_0_io_enable_4 = io_DemuxEn0_4; // @[NeuralNetwork.scala 88:33]
  assign demuxinst0_0_io_enable_5 = io_DemuxEn0_5; // @[NeuralNetwork.scala 88:33]
  assign demuxinst0_0_io_enable_6 = io_DemuxEn0_6; // @[NeuralNetwork.scala 88:33]
  assign demuxinst0_0_io_enable_7 = io_DemuxEn0_7; // @[NeuralNetwork.scala 88:33]
  assign demuxinst1_0_clock = clock;
  assign demuxinst1_0_io_in = demuxinst0_0_io_out_0; // @[NeuralNetwork.scala 85:23]
  assign demuxinst1_0_io_sel = io_DemuxSel; // @[NeuralNetwork.scala 82:24]
  assign demuxinst1_0_io_enable_0 = io_DemuxEn_0; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_0_io_enable_1 = io_DemuxEn_1; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_0_io_enable_2 = io_DemuxEn_2; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_0_io_enable_3 = io_DemuxEn_3; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_0_io_enable_4 = io_DemuxEn_4; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_0_io_enable_5 = io_DemuxEn_5; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_0_io_enable_6 = io_DemuxEn_6; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_0_io_enable_7 = io_DemuxEn_7; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_1_clock = clock;
  assign demuxinst1_1_io_in = demuxinst0_0_io_out_1; // @[NeuralNetwork.scala 85:23]
  assign demuxinst1_1_io_sel = io_DemuxSel; // @[NeuralNetwork.scala 82:24]
  assign demuxinst1_1_io_enable_0 = io_DemuxEn_8; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_1_io_enable_1 = io_DemuxEn_9; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_1_io_enable_2 = io_DemuxEn_10; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_1_io_enable_3 = io_DemuxEn_11; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_1_io_enable_4 = io_DemuxEn_12; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_1_io_enable_5 = io_DemuxEn_13; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_1_io_enable_6 = io_DemuxEn_14; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_1_io_enable_7 = io_DemuxEn_15; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_2_clock = clock;
  assign demuxinst1_2_io_in = demuxinst0_0_io_out_2; // @[NeuralNetwork.scala 85:23]
  assign demuxinst1_2_io_sel = io_DemuxSel; // @[NeuralNetwork.scala 82:24]
  assign demuxinst1_2_io_enable_0 = io_DemuxEn_16; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_2_io_enable_1 = io_DemuxEn_17; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_2_io_enable_2 = io_DemuxEn_18; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_2_io_enable_3 = io_DemuxEn_19; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_2_io_enable_4 = io_DemuxEn_20; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_2_io_enable_5 = io_DemuxEn_21; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_2_io_enable_6 = io_DemuxEn_22; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_2_io_enable_7 = io_DemuxEn_23; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_3_clock = clock;
  assign demuxinst1_3_io_in = demuxinst0_0_io_out_3; // @[NeuralNetwork.scala 85:23]
  assign demuxinst1_3_io_sel = io_DemuxSel; // @[NeuralNetwork.scala 82:24]
  assign demuxinst1_3_io_enable_0 = io_DemuxEn_24; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_3_io_enable_1 = io_DemuxEn_25; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_3_io_enable_2 = io_DemuxEn_26; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_3_io_enable_3 = io_DemuxEn_27; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_3_io_enable_4 = io_DemuxEn_28; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_3_io_enable_5 = io_DemuxEn_29; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_3_io_enable_6 = io_DemuxEn_30; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_3_io_enable_7 = io_DemuxEn_31; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_4_clock = clock;
  assign demuxinst1_4_io_in = demuxinst0_0_io_out_4; // @[NeuralNetwork.scala 85:23]
  assign demuxinst1_4_io_sel = io_DemuxSel; // @[NeuralNetwork.scala 82:24]
  assign demuxinst1_4_io_enable_0 = io_DemuxEn_32; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_4_io_enable_1 = io_DemuxEn_33; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_4_io_enable_2 = io_DemuxEn_34; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_4_io_enable_3 = io_DemuxEn_35; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_4_io_enable_4 = io_DemuxEn_36; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_4_io_enable_5 = io_DemuxEn_37; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_4_io_enable_6 = io_DemuxEn_38; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_4_io_enable_7 = io_DemuxEn_39; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_5_clock = clock;
  assign demuxinst1_5_io_in = demuxinst0_0_io_out_5; // @[NeuralNetwork.scala 85:23]
  assign demuxinst1_5_io_sel = io_DemuxSel; // @[NeuralNetwork.scala 82:24]
  assign demuxinst1_5_io_enable_0 = io_DemuxEn_40; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_5_io_enable_1 = io_DemuxEn_41; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_5_io_enable_2 = io_DemuxEn_42; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_5_io_enable_3 = io_DemuxEn_43; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_5_io_enable_4 = io_DemuxEn_44; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_5_io_enable_5 = io_DemuxEn_45; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_5_io_enable_6 = io_DemuxEn_46; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_5_io_enable_7 = io_DemuxEn_47; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_6_clock = clock;
  assign demuxinst1_6_io_in = demuxinst0_0_io_out_6; // @[NeuralNetwork.scala 85:23]
  assign demuxinst1_6_io_sel = io_DemuxSel; // @[NeuralNetwork.scala 82:24]
  assign demuxinst1_6_io_enable_0 = io_DemuxEn_48; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_6_io_enable_1 = io_DemuxEn_49; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_6_io_enable_2 = io_DemuxEn_50; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_6_io_enable_3 = io_DemuxEn_51; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_6_io_enable_4 = io_DemuxEn_52; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_6_io_enable_5 = io_DemuxEn_53; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_6_io_enable_6 = io_DemuxEn_54; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_6_io_enable_7 = io_DemuxEn_55; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_7_clock = clock;
  assign demuxinst1_7_io_in = demuxinst0_0_io_out_7; // @[NeuralNetwork.scala 85:23]
  assign demuxinst1_7_io_sel = io_DemuxSel; // @[NeuralNetwork.scala 82:24]
  assign demuxinst1_7_io_enable_0 = io_DemuxEn_56; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_7_io_enable_1 = io_DemuxEn_57; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_7_io_enable_2 = io_DemuxEn_58; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_7_io_enable_3 = io_DemuxEn_59; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_7_io_enable_4 = io_DemuxEn_60; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_7_io_enable_5 = io_DemuxEn_61; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_7_io_enable_6 = io_DemuxEn_62; // @[NeuralNetwork.scala 93:32]
  assign demuxinst1_7_io_enable_7 = io_DemuxEn_63; // @[NeuralNetwork.scala 93:32]
  assign PoolingControl_io_InputMatrix_0 = demuxinst1_0_io_out_0; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_1 = demuxinst1_1_io_out_0; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_2 = demuxinst1_2_io_out_0; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_3 = demuxinst1_3_io_out_0; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_4 = demuxinst1_4_io_out_0; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_5 = demuxinst1_5_io_out_0; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_6 = demuxinst1_6_io_out_0; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_7 = demuxinst1_7_io_out_0; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_8 = demuxinst1_0_io_out_1; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_9 = demuxinst1_1_io_out_1; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_10 = demuxinst1_2_io_out_1; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_11 = demuxinst1_3_io_out_1; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_12 = demuxinst1_4_io_out_1; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_13 = demuxinst1_5_io_out_1; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_14 = demuxinst1_6_io_out_1; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_15 = demuxinst1_7_io_out_1; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_16 = demuxinst1_0_io_out_2; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_17 = demuxinst1_1_io_out_2; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_18 = demuxinst1_2_io_out_2; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_19 = demuxinst1_3_io_out_2; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_20 = demuxinst1_4_io_out_2; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_21 = demuxinst1_5_io_out_2; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_22 = demuxinst1_6_io_out_2; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_23 = demuxinst1_7_io_out_2; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_24 = demuxinst1_0_io_out_3; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_25 = demuxinst1_1_io_out_3; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_26 = demuxinst1_2_io_out_3; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_27 = demuxinst1_3_io_out_3; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_28 = demuxinst1_4_io_out_3; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_29 = demuxinst1_5_io_out_3; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_30 = demuxinst1_6_io_out_3; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_31 = demuxinst1_7_io_out_3; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_32 = demuxinst1_0_io_out_4; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_33 = demuxinst1_1_io_out_4; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_34 = demuxinst1_2_io_out_4; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_35 = demuxinst1_3_io_out_4; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_36 = demuxinst1_4_io_out_4; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_37 = demuxinst1_5_io_out_4; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_38 = demuxinst1_6_io_out_4; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_39 = demuxinst1_7_io_out_4; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_40 = demuxinst1_0_io_out_5; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_41 = demuxinst1_1_io_out_5; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_42 = demuxinst1_2_io_out_5; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_43 = demuxinst1_3_io_out_5; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_44 = demuxinst1_4_io_out_5; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_45 = demuxinst1_5_io_out_5; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_46 = demuxinst1_6_io_out_5; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_47 = demuxinst1_7_io_out_5; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_48 = demuxinst1_0_io_out_6; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_49 = demuxinst1_1_io_out_6; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_50 = demuxinst1_2_io_out_6; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_51 = demuxinst1_3_io_out_6; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_52 = demuxinst1_4_io_out_6; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_53 = demuxinst1_5_io_out_6; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_54 = demuxinst1_6_io_out_6; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_55 = demuxinst1_7_io_out_6; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_56 = demuxinst1_0_io_out_7; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_57 = demuxinst1_1_io_out_7; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_58 = demuxinst1_2_io_out_7; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_59 = demuxinst1_3_io_out_7; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_60 = demuxinst1_4_io_out_7; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_61 = demuxinst1_5_io_out_7; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_62 = demuxinst1_6_io_out_7; // @[NeuralNetwork.scala 103:48]
  assign PoolingControl_io_InputMatrix_63 = demuxinst1_7_io_out_7; // @[NeuralNetwork.scala 103:48]
  assign FullyConnected_clock = clock;
  assign FullyConnected_reset = reset;
  assign FullyConnected_io_matB_0 = PoolingControl_io_single_out_0; // @[NeuralNetwork.scala 111:33]
  assign FullyConnected_io_matB_1 = PoolingControl_io_single_out_1; // @[NeuralNetwork.scala 111:33]
  assign FullyConnected_io_matB_2 = PoolingControl_io_single_out_2; // @[NeuralNetwork.scala 111:33]
  assign FullyConnected_io_matB_3 = PoolingControl_io_single_out_3; // @[NeuralNetwork.scala 111:33]
  assign FullyConnected_io_matB_4 = PoolingControl_io_single_out_4; // @[NeuralNetwork.scala 111:33]
  assign FullyConnected_io_matB_5 = PoolingControl_io_single_out_5; // @[NeuralNetwork.scala 111:33]
  assign FullyConnected_io_matB_6 = PoolingControl_io_single_out_6; // @[NeuralNetwork.scala 111:33]
  assign FullyConnected_io_matB_7 = PoolingControl_io_single_out_7; // @[NeuralNetwork.scala 111:33]
  assign FullyConnected_io_matB_8 = PoolingControl_io_single_out_8; // @[NeuralNetwork.scala 111:33]
  assign FullyConnected_io_matB_9 = PoolingControl_io_single_out_9; // @[NeuralNetwork.scala 111:33]
  assign FullyConnected_io_matB_10 = PoolingControl_io_single_out_10; // @[NeuralNetwork.scala 111:33]
  assign FullyConnected_io_matB_11 = PoolingControl_io_single_out_11; // @[NeuralNetwork.scala 111:33]
  assign FullyConnected_io_matB_12 = PoolingControl_io_single_out_12; // @[NeuralNetwork.scala 111:33]
  assign FullyConnected_io_matB_13 = PoolingControl_io_single_out_13; // @[NeuralNetwork.scala 111:33]
  assign FullyConnected_io_matB_14 = PoolingControl_io_single_out_14; // @[NeuralNetwork.scala 111:33]
  assign FullyConnected_io_matB_15 = PoolingControl_io_single_out_15; // @[NeuralNetwork.scala 111:33]
  assign FullyConnected_io_MuxSel = io_FCMuxSel; // @[NeuralNetwork.scala 123:30]
  assign FullyConnected_io_DemuxEn_0 = io_FCDemuxEn_0; // @[NeuralNetwork.scala 124:31]
  assign FullyConnected_io_DemuxEn_1 = io_FCDemuxEn_1; // @[NeuralNetwork.scala 124:31]
  assign FullyConnected_io_DemuxEn_2 = io_FCDemuxEn_2; // @[NeuralNetwork.scala 124:31]
  assign FullyConnected_io_DemuxEn_3 = io_FCDemuxEn_3; // @[NeuralNetwork.scala 124:31]
  assign SoftMaxModule_clock = clock;
  assign SoftMaxModule_io_input_0 = FullyConnected_io_fC_out_0; // @[NeuralNetwork.scala 129:33]
  assign SoftMaxModule_io_input_1 = FullyConnected_io_fC_out_1; // @[NeuralNetwork.scala 129:33]
  assign SoftMaxModule_io_input_2 = FullyConnected_io_fC_out_2; // @[NeuralNetwork.scala 129:33]
  assign SoftMaxModule_io_input_3 = FullyConnected_io_fC_out_3; // @[NeuralNetwork.scala 129:33]
  assign SoftMaxModule_io_input_4 = FullyConnected_io_fC_out_4; // @[NeuralNetwork.scala 129:33]
  assign SoftMaxModule_io_input_5 = FullyConnected_io_fC_out_5; // @[NeuralNetwork.scala 129:33]
  assign SoftMaxModule_io_input_6 = FullyConnected_io_fC_out_6; // @[NeuralNetwork.scala 129:33]
  assign SoftMaxModule_io_input_7 = FullyConnected_io_fC_out_7; // @[NeuralNetwork.scala 129:33]
  assign SoftMaxModule_io_input_8 = FullyConnected_io_fC_out_8; // @[NeuralNetwork.scala 129:33]
  assign SoftMaxModule_io_input_9 = FullyConnected_io_fC_out_9; // @[NeuralNetwork.scala 129:33]
  always @(posedge clock) begin
    reginA_0 <= io_inputA_0; // @[NeuralNetwork.scala 54:17]
    reginA_1 <= io_inputA_1; // @[NeuralNetwork.scala 54:17]
    reginA_2 <= io_inputA_2; // @[NeuralNetwork.scala 54:17]
    reginA_3 <= io_inputA_3; // @[NeuralNetwork.scala 54:17]
    reginA_4 <= io_inputA_4; // @[NeuralNetwork.scala 54:17]
    reginA_5 <= io_inputA_5; // @[NeuralNetwork.scala 54:17]
    reginA_6 <= io_inputA_6; // @[NeuralNetwork.scala 54:17]
    reginA_7 <= io_inputA_7; // @[NeuralNetwork.scala 54:17]
    reginA_8 <= io_inputA_8; // @[NeuralNetwork.scala 54:17]
    reginB_0 <= io_inputB_0; // @[NeuralNetwork.scala 55:17]
    reginB_1 <= io_inputB_1; // @[NeuralNetwork.scala 55:17]
    reginB_2 <= io_inputB_2; // @[NeuralNetwork.scala 55:17]
    reginB_3 <= io_inputB_3; // @[NeuralNetwork.scala 55:17]
    reginB_4 <= io_inputB_4; // @[NeuralNetwork.scala 55:17]
    reginB_5 <= io_inputB_5; // @[NeuralNetwork.scala 55:17]
    reginB_6 <= io_inputB_6; // @[NeuralNetwork.scala 55:17]
    reginB_7 <= io_inputB_7; // @[NeuralNetwork.scala 55:17]
    reginB_8 <= io_inputB_8; // @[NeuralNetwork.scala 55:17]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reginA_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  reginA_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  reginA_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  reginA_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  reginA_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  reginA_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  reginA_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  reginA_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  reginA_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  reginB_0 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  reginB_1 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  reginB_2 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  reginB_3 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  reginB_4 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  reginB_5 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  reginB_6 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  reginB_7 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  reginB_8 = _RAND_17[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

