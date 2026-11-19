\m5_TLV_version 1d: tl-x.org
\m5

\SV
   m5_makerchip_module
\TLV
   $reset = *reset;
   $input = *cyc_cnt;
   $stage1 = >>1$input;
   $stage2 = >>1$stage1;
   $stage3 = >>1$stage2;

   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
