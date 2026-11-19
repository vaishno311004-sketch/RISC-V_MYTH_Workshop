\m5_TLV_version 1d: tl-x.org
\m5

\SV
   m5_makerchip_module
\TLV
   $reset = *reset;
   $count[3:0] = $reset ? 4'b0000 : (>>1$count + 4'b0001);

   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
