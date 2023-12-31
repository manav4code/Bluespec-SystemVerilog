//
// Generated by Bluespec Compiler, version 2023.01-29-g0e9a5b26 (build 0e9a5b26)
//
// On Mon Oct 23 02:37:58 IST 2023
//
//
// Ports:
// Name                         I/O  size props
// addOutput                      O    33
// RDY_addOutput                  O     1 const
// CLK                            I     1 unused
// RST_N                          I     1 unused
// addOutput_a                    I    32
// addOutput_b                    I    32
// addOutput_cin                  I     1
//
// Combinational paths from inputs to outputs:
//   (addOutput_a, addOutput_b, addOutput_cin) -> addOutput
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

module mkAdder(CLK,
	       RST_N,

	       addOutput_a,
	       addOutput_b,
	       addOutput_cin,
	       addOutput,
	       RDY_addOutput);
  input  CLK;
  input  RST_N;

  // value method addOutput
  input  [31 : 0] addOutput_a;
  input  [31 : 0] addOutput_b;
  input  addOutput_cin;
  output [32 : 0] addOutput;
  output RDY_addOutput;

  // signals for module outputs
  wire [32 : 0] addOutput;
  wire RDY_addOutput;

  // remaining internal signals
  wire [32 : 0] IF_addOutput_cin_THEN_1_ELSE_0__q1;
  wire [31 : 0] sum_o__h23;
  wire [29 : 0] addOutput_a_BIT_29_XOR_addOutput_b_BIT_29_26_X_ETC___d300;
  wire [27 : 0] addOutput_a_BIT_27_3_XOR_addOutput_b_BIT_27_4__ETC___d299;
  wire [25 : 0] addOutput_a_BIT_25_9_XOR_addOutput_b_BIT_25_0__ETC___d298;
  wire [23 : 0] addOutput_a_BIT_23_5_XOR_addOutput_b_BIT_23_6__ETC___d297;
  wire [21 : 0] addOutput_a_BIT_21_1_XOR_addOutput_b_BIT_21_2__ETC___d296;
  wire [19 : 0] addOutput_a_BIT_19_7_XOR_addOutput_b_BIT_19_8__ETC___d295;
  wire [17 : 0] addOutput_a_BIT_17_3_XOR_addOutput_b_BIT_17_4__ETC___d294;
  wire [15 : 0] addOutput_a_BIT_15_9_XOR_addOutput_b_BIT_15_0__ETC___d293;
  wire [13 : 0] addOutput_a_BIT_13_5_XOR_addOutput_b_BIT_13_6__ETC___d292;
  wire [11 : 0] addOutput_a_BIT_11_1_XOR_addOutput_b_BIT_11_2__ETC___d291;
  wire [9 : 0] addOutput_a_BIT_9_7_XOR_addOutput_b_BIT_9_8_66_ETC___d290;
  wire [7 : 0] addOutput_a_BIT_7_3_XOR_addOutput_b_BIT_7_4_70_ETC___d289;
  wire [5 : 0] addOutput_a_BIT_5_9_XOR_addOutput_b_BIT_5_0_74_ETC___d288;
  wire [3 : 0] addOutput_a_BIT_3_5_XOR_addOutput_b_BIT_3_6_78_ETC___d287;
  wire cin__h1004,
       cin__h1148,
       cin__h1292,
       cin__h1436,
       cin__h1580,
       cin__h1724,
       cin__h1868,
       cin__h2012,
       cin__h2156,
       cin__h2300,
       cin__h2444,
       cin__h2588,
       cin__h2732,
       cin__h2876,
       cin__h3020,
       cin__h3164,
       cin__h3308,
       cin__h3452,
       cin__h3596,
       cin__h3740,
       cin__h3884,
       cin__h4028,
       cin__h4172,
       cin__h4316,
       cin__h4460,
       cin__h4604,
       cin__h4748,
       cin__h4892,
       cin__h5036,
       cin__h5180,
       cin__h5324,
       cout_o__h22,
       x__h1018,
       x__h1020,
       x__h1095,
       x__h1162,
       x__h1164,
       x__h1239,
       x__h1306,
       x__h1308,
       x__h1383,
       x__h1450,
       x__h1452,
       x__h1527,
       x__h1594,
       x__h1596,
       x__h1671,
       x__h1738,
       x__h1740,
       x__h1815,
       x__h1882,
       x__h1884,
       x__h1959,
       x__h2026,
       x__h2028,
       x__h2103,
       x__h2170,
       x__h2172,
       x__h2247,
       x__h2314,
       x__h2316,
       x__h2391,
       x__h2458,
       x__h2460,
       x__h2535,
       x__h2602,
       x__h2604,
       x__h2679,
       x__h2746,
       x__h2748,
       x__h2823,
       x__h2890,
       x__h2892,
       x__h2967,
       x__h3034,
       x__h3036,
       x__h3111,
       x__h3178,
       x__h3180,
       x__h3255,
       x__h3322,
       x__h3324,
       x__h3399,
       x__h3466,
       x__h3468,
       x__h3543,
       x__h3610,
       x__h3612,
       x__h3687,
       x__h3754,
       x__h3756,
       x__h3831,
       x__h3898,
       x__h3900,
       x__h3975,
       x__h4042,
       x__h4044,
       x__h4119,
       x__h4186,
       x__h4188,
       x__h4263,
       x__h4330,
       x__h4332,
       x__h4407,
       x__h4474,
       x__h4476,
       x__h4551,
       x__h4618,
       x__h4620,
       x__h4695,
       x__h4762,
       x__h4764,
       x__h4839,
       x__h4906,
       x__h4908,
       x__h4983,
       x__h5050,
       x__h5052,
       x__h5127,
       x__h5194,
       x__h5196,
       x__h5271,
       x__h5338,
       x__h5340,
       x__h5415,
       x__h871,
       x__h873,
       x__h951,
       y__h1019,
       y__h1021,
       y__h1163,
       y__h1165,
       y__h1307,
       y__h1309,
       y__h1451,
       y__h1453,
       y__h1595,
       y__h1597,
       y__h1739,
       y__h1741,
       y__h1883,
       y__h1885,
       y__h2027,
       y__h2029,
       y__h2171,
       y__h2173,
       y__h2315,
       y__h2317,
       y__h2459,
       y__h2461,
       y__h2603,
       y__h2605,
       y__h2747,
       y__h2749,
       y__h2891,
       y__h2893,
       y__h3035,
       y__h3037,
       y__h3179,
       y__h3181,
       y__h3323,
       y__h3325,
       y__h3467,
       y__h3469,
       y__h3611,
       y__h3613,
       y__h3755,
       y__h3757,
       y__h3899,
       y__h3901,
       y__h4043,
       y__h4045,
       y__h4187,
       y__h4189,
       y__h4331,
       y__h4333,
       y__h4475,
       y__h4477,
       y__h4619,
       y__h4621,
       y__h4763,
       y__h4765,
       y__h4907,
       y__h4909,
       y__h5051,
       y__h5053,
       y__h5195,
       y__h5197,
       y__h5339,
       y__h5341,
       y__h872,
       y__h874;

  // value method addOutput
  assign addOutput = { sum_o__h23, cout_o__h22 } ;
  assign RDY_addOutput = 1'd1 ;

  // remaining internal signals
  assign IF_addOutput_cin_THEN_1_ELSE_0__q1 = addOutput_cin ? 33'd1 : 33'd0 ;
  assign addOutput_a_BIT_11_1_XOR_addOutput_b_BIT_11_2__ETC___d291 =
	     { x__h2535 ^ cin__h2444,
	       x__h2391 ^ cin__h2300,
	       addOutput_a_BIT_9_7_XOR_addOutput_b_BIT_9_8_66_ETC___d290 } ;
  assign addOutput_a_BIT_13_5_XOR_addOutput_b_BIT_13_6__ETC___d292 =
	     { x__h2823 ^ cin__h2732,
	       x__h2679 ^ cin__h2588,
	       addOutput_a_BIT_11_1_XOR_addOutput_b_BIT_11_2__ETC___d291 } ;
  assign addOutput_a_BIT_15_9_XOR_addOutput_b_BIT_15_0__ETC___d293 =
	     { x__h3111 ^ cin__h3020,
	       x__h2967 ^ cin__h2876,
	       addOutput_a_BIT_13_5_XOR_addOutput_b_BIT_13_6__ETC___d292 } ;
  assign addOutput_a_BIT_17_3_XOR_addOutput_b_BIT_17_4__ETC___d294 =
	     { x__h3399 ^ cin__h3308,
	       x__h3255 ^ cin__h3164,
	       addOutput_a_BIT_15_9_XOR_addOutput_b_BIT_15_0__ETC___d293 } ;
  assign addOutput_a_BIT_19_7_XOR_addOutput_b_BIT_19_8__ETC___d295 =
	     { x__h3687 ^ cin__h3596,
	       x__h3543 ^ cin__h3452,
	       addOutput_a_BIT_17_3_XOR_addOutput_b_BIT_17_4__ETC___d294 } ;
  assign addOutput_a_BIT_21_1_XOR_addOutput_b_BIT_21_2__ETC___d296 =
	     { x__h3975 ^ cin__h3884,
	       x__h3831 ^ cin__h3740,
	       addOutput_a_BIT_19_7_XOR_addOutput_b_BIT_19_8__ETC___d295 } ;
  assign addOutput_a_BIT_23_5_XOR_addOutput_b_BIT_23_6__ETC___d297 =
	     { x__h4263 ^ cin__h4172,
	       x__h4119 ^ cin__h4028,
	       addOutput_a_BIT_21_1_XOR_addOutput_b_BIT_21_2__ETC___d296 } ;
  assign addOutput_a_BIT_25_9_XOR_addOutput_b_BIT_25_0__ETC___d298 =
	     { x__h4551 ^ cin__h4460,
	       x__h4407 ^ cin__h4316,
	       addOutput_a_BIT_23_5_XOR_addOutput_b_BIT_23_6__ETC___d297 } ;
  assign addOutput_a_BIT_27_3_XOR_addOutput_b_BIT_27_4__ETC___d299 =
	     { x__h4839 ^ cin__h4748,
	       x__h4695 ^ cin__h4604,
	       addOutput_a_BIT_25_9_XOR_addOutput_b_BIT_25_0__ETC___d298 } ;
  assign addOutput_a_BIT_29_XOR_addOutput_b_BIT_29_26_X_ETC___d300 =
	     { x__h5127 ^ cin__h5036,
	       x__h4983 ^ cin__h4892,
	       addOutput_a_BIT_27_3_XOR_addOutput_b_BIT_27_4__ETC___d299 } ;
  assign addOutput_a_BIT_3_5_XOR_addOutput_b_BIT_3_6_78_ETC___d287 =
	     { x__h1383 ^ cin__h1292,
	       x__h1239 ^ cin__h1148,
	       x__h1095 ^ cin__h1004,
	       x__h951 ^ IF_addOutput_cin_THEN_1_ELSE_0__q1[0] } ;
  assign addOutput_a_BIT_5_9_XOR_addOutput_b_BIT_5_0_74_ETC___d288 =
	     { x__h1671 ^ cin__h1580,
	       x__h1527 ^ cin__h1436,
	       addOutput_a_BIT_3_5_XOR_addOutput_b_BIT_3_6_78_ETC___d287 } ;
  assign addOutput_a_BIT_7_3_XOR_addOutput_b_BIT_7_4_70_ETC___d289 =
	     { x__h1959 ^ cin__h1868,
	       x__h1815 ^ cin__h1724,
	       addOutput_a_BIT_5_9_XOR_addOutput_b_BIT_5_0_74_ETC___d288 } ;
  assign addOutput_a_BIT_9_7_XOR_addOutput_b_BIT_9_8_66_ETC___d290 =
	     { x__h2247 ^ cin__h2156,
	       x__h2103 ^ cin__h2012,
	       addOutput_a_BIT_7_3_XOR_addOutput_b_BIT_7_4_70_ETC___d289 } ;
  assign cin__h1004 = x__h871 | y__h872 ;
  assign cin__h1148 = x__h1018 | y__h1019 ;
  assign cin__h1292 = x__h1162 | y__h1163 ;
  assign cin__h1436 = x__h1306 | y__h1307 ;
  assign cin__h1580 = x__h1450 | y__h1451 ;
  assign cin__h1724 = x__h1594 | y__h1595 ;
  assign cin__h1868 = x__h1738 | y__h1739 ;
  assign cin__h2012 = x__h1882 | y__h1883 ;
  assign cin__h2156 = x__h2026 | y__h2027 ;
  assign cin__h2300 = x__h2170 | y__h2171 ;
  assign cin__h2444 = x__h2314 | y__h2315 ;
  assign cin__h2588 = x__h2458 | y__h2459 ;
  assign cin__h2732 = x__h2602 | y__h2603 ;
  assign cin__h2876 = x__h2746 | y__h2747 ;
  assign cin__h3020 = x__h2890 | y__h2891 ;
  assign cin__h3164 = x__h3034 | y__h3035 ;
  assign cin__h3308 = x__h3178 | y__h3179 ;
  assign cin__h3452 = x__h3322 | y__h3323 ;
  assign cin__h3596 = x__h3466 | y__h3467 ;
  assign cin__h3740 = x__h3610 | y__h3611 ;
  assign cin__h3884 = x__h3754 | y__h3755 ;
  assign cin__h4028 = x__h3898 | y__h3899 ;
  assign cin__h4172 = x__h4042 | y__h4043 ;
  assign cin__h4316 = x__h4186 | y__h4187 ;
  assign cin__h4460 = x__h4330 | y__h4331 ;
  assign cin__h4604 = x__h4474 | y__h4475 ;
  assign cin__h4748 = x__h4618 | y__h4619 ;
  assign cin__h4892 = x__h4762 | y__h4763 ;
  assign cin__h5036 = x__h4906 | y__h4907 ;
  assign cin__h5180 = x__h5050 | y__h5051 ;
  assign cin__h5324 = x__h5194 | y__h5195 ;
  assign cout_o__h22 = x__h5338 | y__h5339 ;
  assign sum_o__h23 =
	     { x__h5415 ^ cin__h5324,
	       x__h5271 ^ cin__h5180,
	       addOutput_a_BIT_29_XOR_addOutput_b_BIT_29_26_X_ETC___d300 } ;
  assign x__h1018 = x__h1020 | y__h1021 ;
  assign x__h1020 = addOutput_a[1] & addOutput_b[1] ;
  assign x__h1095 = addOutput_a[1] ^ addOutput_b[1] ;
  assign x__h1162 = x__h1164 | y__h1165 ;
  assign x__h1164 = addOutput_a[2] & addOutput_b[2] ;
  assign x__h1239 = addOutput_a[2] ^ addOutput_b[2] ;
  assign x__h1306 = x__h1308 | y__h1309 ;
  assign x__h1308 = addOutput_a[3] & addOutput_b[3] ;
  assign x__h1383 = addOutput_a[3] ^ addOutput_b[3] ;
  assign x__h1450 = x__h1452 | y__h1453 ;
  assign x__h1452 = addOutput_a[4] & addOutput_b[4] ;
  assign x__h1527 = addOutput_a[4] ^ addOutput_b[4] ;
  assign x__h1594 = x__h1596 | y__h1597 ;
  assign x__h1596 = addOutput_a[5] & addOutput_b[5] ;
  assign x__h1671 = addOutput_a[5] ^ addOutput_b[5] ;
  assign x__h1738 = x__h1740 | y__h1741 ;
  assign x__h1740 = addOutput_a[6] & addOutput_b[6] ;
  assign x__h1815 = addOutput_a[6] ^ addOutput_b[6] ;
  assign x__h1882 = x__h1884 | y__h1885 ;
  assign x__h1884 = addOutput_a[7] & addOutput_b[7] ;
  assign x__h1959 = addOutput_a[7] ^ addOutput_b[7] ;
  assign x__h2026 = x__h2028 | y__h2029 ;
  assign x__h2028 = addOutput_a[8] & addOutput_b[8] ;
  assign x__h2103 = addOutput_a[8] ^ addOutput_b[8] ;
  assign x__h2170 = x__h2172 | y__h2173 ;
  assign x__h2172 = addOutput_a[9] & addOutput_b[9] ;
  assign x__h2247 = addOutput_a[9] ^ addOutput_b[9] ;
  assign x__h2314 = x__h2316 | y__h2317 ;
  assign x__h2316 = addOutput_a[10] & addOutput_b[10] ;
  assign x__h2391 = addOutput_a[10] ^ addOutput_b[10] ;
  assign x__h2458 = x__h2460 | y__h2461 ;
  assign x__h2460 = addOutput_a[11] & addOutput_b[11] ;
  assign x__h2535 = addOutput_a[11] ^ addOutput_b[11] ;
  assign x__h2602 = x__h2604 | y__h2605 ;
  assign x__h2604 = addOutput_a[12] & addOutput_b[12] ;
  assign x__h2679 = addOutput_a[12] ^ addOutput_b[12] ;
  assign x__h2746 = x__h2748 | y__h2749 ;
  assign x__h2748 = addOutput_a[13] & addOutput_b[13] ;
  assign x__h2823 = addOutput_a[13] ^ addOutput_b[13] ;
  assign x__h2890 = x__h2892 | y__h2893 ;
  assign x__h2892 = addOutput_a[14] & addOutput_b[14] ;
  assign x__h2967 = addOutput_a[14] ^ addOutput_b[14] ;
  assign x__h3034 = x__h3036 | y__h3037 ;
  assign x__h3036 = addOutput_a[15] & addOutput_b[15] ;
  assign x__h3111 = addOutput_a[15] ^ addOutput_b[15] ;
  assign x__h3178 = x__h3180 | y__h3181 ;
  assign x__h3180 = addOutput_a[16] & addOutput_b[16] ;
  assign x__h3255 = addOutput_a[16] ^ addOutput_b[16] ;
  assign x__h3322 = x__h3324 | y__h3325 ;
  assign x__h3324 = addOutput_a[17] & addOutput_b[17] ;
  assign x__h3399 = addOutput_a[17] ^ addOutput_b[17] ;
  assign x__h3466 = x__h3468 | y__h3469 ;
  assign x__h3468 = addOutput_a[18] & addOutput_b[18] ;
  assign x__h3543 = addOutput_a[18] ^ addOutput_b[18] ;
  assign x__h3610 = x__h3612 | y__h3613 ;
  assign x__h3612 = addOutput_a[19] & addOutput_b[19] ;
  assign x__h3687 = addOutput_a[19] ^ addOutput_b[19] ;
  assign x__h3754 = x__h3756 | y__h3757 ;
  assign x__h3756 = addOutput_a[20] & addOutput_b[20] ;
  assign x__h3831 = addOutput_a[20] ^ addOutput_b[20] ;
  assign x__h3898 = x__h3900 | y__h3901 ;
  assign x__h3900 = addOutput_a[21] & addOutput_b[21] ;
  assign x__h3975 = addOutput_a[21] ^ addOutput_b[21] ;
  assign x__h4042 = x__h4044 | y__h4045 ;
  assign x__h4044 = addOutput_a[22] & addOutput_b[22] ;
  assign x__h4119 = addOutput_a[22] ^ addOutput_b[22] ;
  assign x__h4186 = x__h4188 | y__h4189 ;
  assign x__h4188 = addOutput_a[23] & addOutput_b[23] ;
  assign x__h4263 = addOutput_a[23] ^ addOutput_b[23] ;
  assign x__h4330 = x__h4332 | y__h4333 ;
  assign x__h4332 = addOutput_a[24] & addOutput_b[24] ;
  assign x__h4407 = addOutput_a[24] ^ addOutput_b[24] ;
  assign x__h4474 = x__h4476 | y__h4477 ;
  assign x__h4476 = addOutput_a[25] & addOutput_b[25] ;
  assign x__h4551 = addOutput_a[25] ^ addOutput_b[25] ;
  assign x__h4618 = x__h4620 | y__h4621 ;
  assign x__h4620 = addOutput_a[26] & addOutput_b[26] ;
  assign x__h4695 = addOutput_a[26] ^ addOutput_b[26] ;
  assign x__h4762 = x__h4764 | y__h4765 ;
  assign x__h4764 = addOutput_a[27] & addOutput_b[27] ;
  assign x__h4839 = addOutput_a[27] ^ addOutput_b[27] ;
  assign x__h4906 = x__h4908 | y__h4909 ;
  assign x__h4908 = addOutput_a[28] & addOutput_b[28] ;
  assign x__h4983 = addOutput_a[28] ^ addOutput_b[28] ;
  assign x__h5050 = x__h5052 | y__h5053 ;
  assign x__h5052 = addOutput_a[29] & addOutput_b[29] ;
  assign x__h5127 = addOutput_a[29] ^ addOutput_b[29] ;
  assign x__h5194 = x__h5196 | y__h5197 ;
  assign x__h5196 = addOutput_a[30] & addOutput_b[30] ;
  assign x__h5271 = addOutput_a[30] ^ addOutput_b[30] ;
  assign x__h5338 = x__h5340 | y__h5341 ;
  assign x__h5340 = addOutput_a[31] & addOutput_b[31] ;
  assign x__h5415 = addOutput_a[31] ^ addOutput_b[31] ;
  assign x__h871 = x__h873 | y__h874 ;
  assign x__h873 = addOutput_a[0] & addOutput_b[0] ;
  assign x__h951 = addOutput_a[0] ^ addOutput_b[0] ;
  assign y__h1019 = addOutput_a[1] & cin__h1004 ;
  assign y__h1021 = addOutput_b[1] & cin__h1004 ;
  assign y__h1163 = addOutput_a[2] & cin__h1148 ;
  assign y__h1165 = addOutput_b[2] & cin__h1148 ;
  assign y__h1307 = addOutput_a[3] & cin__h1292 ;
  assign y__h1309 = addOutput_b[3] & cin__h1292 ;
  assign y__h1451 = addOutput_a[4] & cin__h1436 ;
  assign y__h1453 = addOutput_b[4] & cin__h1436 ;
  assign y__h1595 = addOutput_a[5] & cin__h1580 ;
  assign y__h1597 = addOutput_b[5] & cin__h1580 ;
  assign y__h1739 = addOutput_a[6] & cin__h1724 ;
  assign y__h1741 = addOutput_b[6] & cin__h1724 ;
  assign y__h1883 = addOutput_a[7] & cin__h1868 ;
  assign y__h1885 = addOutput_b[7] & cin__h1868 ;
  assign y__h2027 = addOutput_a[8] & cin__h2012 ;
  assign y__h2029 = addOutput_b[8] & cin__h2012 ;
  assign y__h2171 = addOutput_a[9] & cin__h2156 ;
  assign y__h2173 = addOutput_b[9] & cin__h2156 ;
  assign y__h2315 = addOutput_a[10] & cin__h2300 ;
  assign y__h2317 = addOutput_b[10] & cin__h2300 ;
  assign y__h2459 = addOutput_a[11] & cin__h2444 ;
  assign y__h2461 = addOutput_b[11] & cin__h2444 ;
  assign y__h2603 = addOutput_a[12] & cin__h2588 ;
  assign y__h2605 = addOutput_b[12] & cin__h2588 ;
  assign y__h2747 = addOutput_a[13] & cin__h2732 ;
  assign y__h2749 = addOutput_b[13] & cin__h2732 ;
  assign y__h2891 = addOutput_a[14] & cin__h2876 ;
  assign y__h2893 = addOutput_b[14] & cin__h2876 ;
  assign y__h3035 = addOutput_a[15] & cin__h3020 ;
  assign y__h3037 = addOutput_b[15] & cin__h3020 ;
  assign y__h3179 = addOutput_a[16] & cin__h3164 ;
  assign y__h3181 = addOutput_b[16] & cin__h3164 ;
  assign y__h3323 = addOutput_a[17] & cin__h3308 ;
  assign y__h3325 = addOutput_b[17] & cin__h3308 ;
  assign y__h3467 = addOutput_a[18] & cin__h3452 ;
  assign y__h3469 = addOutput_b[18] & cin__h3452 ;
  assign y__h3611 = addOutput_a[19] & cin__h3596 ;
  assign y__h3613 = addOutput_b[19] & cin__h3596 ;
  assign y__h3755 = addOutput_a[20] & cin__h3740 ;
  assign y__h3757 = addOutput_b[20] & cin__h3740 ;
  assign y__h3899 = addOutput_a[21] & cin__h3884 ;
  assign y__h3901 = addOutput_b[21] & cin__h3884 ;
  assign y__h4043 = addOutput_a[22] & cin__h4028 ;
  assign y__h4045 = addOutput_b[22] & cin__h4028 ;
  assign y__h4187 = addOutput_a[23] & cin__h4172 ;
  assign y__h4189 = addOutput_b[23] & cin__h4172 ;
  assign y__h4331 = addOutput_a[24] & cin__h4316 ;
  assign y__h4333 = addOutput_b[24] & cin__h4316 ;
  assign y__h4475 = addOutput_a[25] & cin__h4460 ;
  assign y__h4477 = addOutput_b[25] & cin__h4460 ;
  assign y__h4619 = addOutput_a[26] & cin__h4604 ;
  assign y__h4621 = addOutput_b[26] & cin__h4604 ;
  assign y__h4763 = addOutput_a[27] & cin__h4748 ;
  assign y__h4765 = addOutput_b[27] & cin__h4748 ;
  assign y__h4907 = addOutput_a[28] & cin__h4892 ;
  assign y__h4909 = addOutput_b[28] & cin__h4892 ;
  assign y__h5051 = addOutput_a[29] & cin__h5036 ;
  assign y__h5053 = addOutput_b[29] & cin__h5036 ;
  assign y__h5195 = addOutput_a[30] & cin__h5180 ;
  assign y__h5197 = addOutput_b[30] & cin__h5180 ;
  assign y__h5339 = addOutput_a[31] & cin__h5324 ;
  assign y__h5341 = addOutput_b[31] & cin__h5324 ;
  assign y__h872 = addOutput_a[0] & IF_addOutput_cin_THEN_1_ELSE_0__q1[0] ;
  assign y__h874 = addOutput_b[0] & IF_addOutput_cin_THEN_1_ELSE_0__q1[0] ;
endmodule  // mkAdder

