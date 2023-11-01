package ADDER;

    typedef 32 W;
    typedef Bit#(W) Word;
    typedef Bit#(TDiv#(W, 2)) HalfWord;
    typedef Bit#(TMul#(W, 2)) DoubleWord;

    typedef struct { Word sum; bit cout; } AddResult deriving (Bits);

    (*synthesize*)
    module mkTb(Empty);

        Adder addBlock <- mkAdder;

        Reg#(Word) a_r <- mkReg({1'b1, 'hA});
        Reg#(Word) b_r <- mkReg({1'b1, 'hA});
        Reg#(bit)  cin_r <- mkReg(1);

        rule perform;
            let tempRes = addBlock.addOutput(a_r, b_r, cin_r);

            $display("Addtion of %h + %h + %h -> %b %h", a_r, b_r, cin_r, tempRes.cout, tempRes.sum);
            $finish(0);
        endrule : perform

    endmodule : mkTb

    interface Adder;
        method AddResult addOutput(Word a, Word b, bit cin);
    endinterface : Adder

    (*synthesize*)
    module mkAdder(Adder);
        
        function Bit#(2) fa(bit a, bit b, bit cin);
            bit sum = a ^ b ^ cin;
            bit cout = (a&b)|(b&cin)|(a&cin);

            return {cout, sum};
        endfunction

        // Ripple Carry Adder function
            // TAdd#(n1,n2) -> n1 + n2; TAdd -> Type Add
        function Bit#(TAdd#(W,1)) addN(Bit#(W) x, Bit#(W) y, Bit#(1) cin);
            Bit#(W) s; Bit#(TAdd#(W,1)) c; c = 0; c[0] = cin;
            let valw = valueOf(W);
            
            for(Integer i = 0; i < valw; i = i + 1)begin
                let cs = fa(x[i],y[i],c[i]);
                c[i+1] = cs[1]; s[i] = cs[0];
            end

            return {c[valw],s};
        endfunction

        method AddResult addOutput(Word a, Word b, bit cin);
            let tempRes = addN(a, b, cin);
            let valW = valueof(W);
            bit cout_o = tempRes[valW];
            Word sum_o = tempRes[valW-1:0];

            return AddResult{ sum: sum_o, cout: cout_o};
        endmethod : addOutput
    endmodule : mkAdder

endpackage : ADDER