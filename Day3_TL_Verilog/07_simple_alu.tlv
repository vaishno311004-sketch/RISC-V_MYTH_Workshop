\m5_TLV_version 1d: tl-x.org
\m5

\SV
   m5_makerchip_module
\TLV
   $reset = *reset;
   $a[3:0] = 4'd5;
   $b[3:0] = 4'd3;
   $op[1:0] = 2'b11;
   $alu_out[3:0] =
      ($op == 2'b00) ? ($a + $b) :
      ($op == 2'b01) ? ($a - $b) :
      ($op == 2'b10) ? ($a & $b) :
                       ($a | $b);

   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
