\m5_TLV_version 1d: tl-x.org
\m5

\SV
   m5_makerchip_module
\TLV
   $reset = *reset;
   $input_a = 1'b1;
   $input_b = 1'b0;
   $and_out = $input_a & $input_b;
   $or_out = $input_a | $input_b;
   $xor_out = $input_a ^ $input_b;
   $not_out = ~$input_a;

   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
