\m5_TLV_version 1d: tl-x.org
\m5

\SV
   m5_makerchip_module
\TLV
   $reset = *reset;
   $input = *cyc_cnt;
   $stored = >>1$input;

   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
