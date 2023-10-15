package p_gcd;
    
    (*synthesize*)
    module mkTb(Empty);
        Reg#(Bit#(2)) state <- mkReg(0);
        Reg#(Bit#(32)) a_i <- mkReg(15);
        Reg#(Bit#(32)) b_i <- mkReg(6);

        GCD gcd_i <- mkGCD();

        rule initGCD (state == 0);
            gcd_i.start(a_i, b_i);
            state <= 1;
        endrule : initGCD

        rule findGCD (state == 1);
            $display("GCD of %d and %d is %d", a_i, b_i, gcd_i.getResult());
            state <= 2;
        endrule

        rule overGCD (state == 2);
            $finish(0);
        endrule

    endmodule : mkTb

    interface GCD;
        method Action start(Bit #(32) a, Bit #(32) b);
        method Bit#(32) getResult();
    endinterface : GCD

    (*synthesize*)
    module mkGCD(GCD);
        Reg #(Bit#(32)) x <- mkReg(0); Reg #(Bit#(32)) y <- mkReg(0);

        rule sub (x >= y && x != 0);
            x <= x - y;
        endrule : sub

        rule swap (x < y && x != 0);
            x <= y;
            y <= x;
        endrule
        
        method Action start(Bit #(32) a, Bit #(32) b) if(x == 0);
            x <= a;
            y <= b;
        endmethod : start

        method Bit#(32) getResult() if(x == 0);
            return y;
        endmethod : getResult

    endmodule : mkGCD

endpackage : p_gcd