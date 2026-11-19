\m5_TLV_version 1d: tl-x.org
\m5

\SV
   m5_makerchip_module
\TLV
   $reset = *reset;
   $a[3:0] = 4'd5;
   $b[3:0] = 4'd3;
   $sum[4:0] = {1'b0, $a} + {1'b0, $b};
   $difference[3:0] = $a - $b;

   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
