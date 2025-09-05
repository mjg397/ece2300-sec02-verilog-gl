`include "PairTripleDetector_GL.v"

module Top();

  logic in0;
  logic in1;
  logic in2;
  logic out;

  PairTripleDetector_GL dut
  (
    .in0 (in0),
    .in1 (in1),
    .in2 (in2),
    .out (out)
  );

  initial begin
    $dumpfile("PairTripleDetector_GL-adhoc.vcd");
    $dumpvars;

    in0 = 0;
    in1 = 0;
    in2 = 0;
    #10;
    $display( "%b %b %b > %b", in0, in1, in2, out );

    in0 = 0;
    in1 = 1;
    in2 = 1;
    #10;
    $display( "%b %b %b > %b", in0, in1, in2, out );

    in0 = 0;
    in1 = 1;
    in2 = 0;
    #10;
    $display( "%b %b %b > %b", in0, in1, in2, out );

    in0 = 1;
    in1 = 1;
    in2 = 1;
    #10;
    $display( "%b %b %b > %b", in0, in1, in2, out );

  end

endmodule