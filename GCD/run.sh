bsc -verilog p_gcd.bsv
bsc -o sim -e mkTb mkTb.v mkGCD.v
./sim
