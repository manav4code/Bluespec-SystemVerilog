//
// Generated by Bluespec Compiler, version 2023.01-29-g0e9a5b26 (build 0e9a5b26)
//
// On Mon Oct 23 02:37:58 IST 2023
//
//
// Ports:
// Name                         I/O  size props
// CLK                            I     1 clock
// RST_N                          I     1 reset
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkTb(CLK,
	    RST_N);
  input  CLK;
  input  RST_N;

  // register a_r
  reg [31 : 0] a_r;
  wire [31 : 0] a_r$D_IN;
  wire a_r$EN;

  // register b_r
  reg [31 : 0] b_r;
  wire [31 : 0] b_r$D_IN;
  wire b_r$EN;

  // register cin_r
  reg cin_r;
  wire cin_r$D_IN, cin_r$EN;

  // ports of submodule addBlock
  wire [32 : 0] addBlock$addOutput;
  wire [31 : 0] addBlock$addOutput_a, addBlock$addOutput_b;
  wire addBlock$addOutput_cin;

  // submodule addBlock
  mkAdder addBlock(.CLK(CLK),
		   .RST_N(RST_N),
		   .addOutput_a(addBlock$addOutput_a),
		   .addOutput_b(addBlock$addOutput_b),
		   .addOutput_cin(addBlock$addOutput_cin),
		   .addOutput(addBlock$addOutput),
		   .RDY_addOutput());

  // register a_r
  assign a_r$D_IN = 32'h0 ;
  assign a_r$EN = 1'b0 ;

  // register b_r
  assign b_r$D_IN = 32'h0 ;
  assign b_r$EN = 1'b0 ;

  // register cin_r
  assign cin_r$D_IN = 1'b0 ;
  assign cin_r$EN = 1'b0 ;

  // submodule addBlock
  assign addBlock$addOutput_a = a_r ;
  assign addBlock$addOutput_b = b_r ;
  assign addBlock$addOutput_cin = cin_r ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        a_r <= `BSV_ASSIGNMENT_DELAY 32'h8000000A;
	b_r <= `BSV_ASSIGNMENT_DELAY 32'h8000000A;
	cin_r <= `BSV_ASSIGNMENT_DELAY 1'd1;
      end
    else
      begin
        if (a_r$EN) a_r <= `BSV_ASSIGNMENT_DELAY a_r$D_IN;
	if (b_r$EN) b_r <= `BSV_ASSIGNMENT_DELAY b_r$D_IN;
	if (cin_r$EN) cin_r <= `BSV_ASSIGNMENT_DELAY cin_r$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    a_r = 32'hAAAAAAAA;
    b_r = 32'hAAAAAAAA;
    cin_r = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      $display("Addtion of %h + %h + %h -> %b %h",
	       a_r,
	       b_r,
	       cin_r,
	       addBlock$addOutput[0],
	       addBlock$addOutput[32:1]);
    if (RST_N != `BSV_RESET_VALUE) $finish(32'd0);
  end
  // synopsys translate_on
endmodule  // mkTb

