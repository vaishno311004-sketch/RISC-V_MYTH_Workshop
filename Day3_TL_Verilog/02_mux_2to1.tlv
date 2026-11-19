\m5_TLV_version 1d: tl-x.org
\m5

\SV
   m5_makerchip_module
\TLV
   $reset = *reset;
   $input_a = 1'b1;
   $input_b = 1'b0;
   $select = 1'b0;
   $mux_out = $select ? $input_b : $input_a;

   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
