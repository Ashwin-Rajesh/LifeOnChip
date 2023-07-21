module life_cell (clk,
    d,
    dl,
    dr,
    in_data,
    l,
    load_in,
    load_out,
    out_data,
    prev_out_data,
    r,
    reset,
    run,
    shift,
    state,
    u,
    ul,
    ur,
    vccd1,
    vssd1);
 input clk;
 input d;
 input dl;
 input dr;
 input in_data;
 input l;
 input load_in;
 input load_out;
 output out_data;
 input prev_out_data;
 input r;
 input reset;
 input run;
 input shift;
 output state;
 input u;
 input ul;
 input ur;
 inout vccd1;
 inout vssd1;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;

 sky130_fd_sc_hd__inv_2 _32_ (.A(net3),
    .Y(_02_));
 sky130_fd_sc_hd__inv_2 _33_ (.A(net14),
    .Y(_03_));
 sky130_fd_sc_hd__inv_2 _34_ (.A(net15),
    .Y(_04_));
 sky130_fd_sc_hd__inv_2 _35_ (.A(net2),
    .Y(_05_));
 sky130_fd_sc_hd__xor2_1 _36_ (.A(net1),
    .B(net13),
    .X(_06_));
 sky130_fd_sc_hd__xnor2_1 _37_ (.A(net9),
    .B(_06_),
    .Y(_07_));
 sky130_fd_sc_hd__xnor2_1 _38_ (.A(_05_),
    .B(_07_),
    .Y(_08_));
 sky130_fd_sc_hd__xnor2_1 _39_ (.A(_04_),
    .B(_08_),
    .Y(_09_));
 sky130_fd_sc_hd__xnor2_1 _40_ (.A(_03_),
    .B(_09_),
    .Y(_10_));
 sky130_fd_sc_hd__or2_1 _41_ (.A(_03_),
    .B(_09_),
    .X(_11_));
 sky130_fd_sc_hd__o21a_1 _42_ (.A1(_02_),
    .A2(_10_),
    .B1(_11_),
    .X(_12_));
 sky130_fd_sc_hd__and2_1 _43_ (.A(net1),
    .B(net13),
    .X(_13_));
 sky130_fd_sc_hd__a21oi_1 _44_ (.A1(net9),
    .A2(_06_),
    .B1(_13_),
    .Y(_14_));
 sky130_fd_sc_hd__or2_1 _45_ (.A(_05_),
    .B(_07_),
    .X(_15_));
 sky130_fd_sc_hd__o21a_1 _46_ (.A1(_04_),
    .A2(_08_),
    .B1(_15_),
    .X(_16_));
 sky130_fd_sc_hd__xnor2_1 _47_ (.A(_14_),
    .B(_16_),
    .Y(_17_));
 sky130_fd_sc_hd__nand2_1 _48_ (.A(_12_),
    .B(_17_),
    .Y(_18_));
 sky130_fd_sc_hd__nor2_1 _49_ (.A(net17),
    .B(net5),
    .Y(_19_));
 sky130_fd_sc_hd__xnor2_1 _50_ (.A(_02_),
    .B(_10_),
    .Y(_20_));
 sky130_fd_sc_hd__mux2_1 _51_ (.A0(net5),
    .A1(_19_),
    .S(_20_),
    .X(_21_));
 sky130_fd_sc_hd__o21a_1 _52_ (.A1(_14_),
    .A2(_16_),
    .B1(net11),
    .X(_22_));
 sky130_fd_sc_hd__o21ai_1 _53_ (.A1(_12_),
    .A2(_17_),
    .B1(_22_),
    .Y(_23_));
 sky130_fd_sc_hd__inv_2 _54_ (.A(net17),
    .Y(_24_));
 sky130_fd_sc_hd__inv_2 _55_ (.A(net5),
    .Y(_25_));
 sky130_fd_sc_hd__o311a_1 _56_ (.A1(_24_),
    .A2(_25_),
    .A3(_20_),
    .B1(_17_),
    .C1(_12_),
    .X(_26_));
 sky130_fd_sc_hd__a211o_1 _57_ (.A1(_18_),
    .A2(_21_),
    .B1(_23_),
    .C1(_26_),
    .X(_27_));
 sky130_fd_sc_hd__mux2_1 _58_ (.A0(net17),
    .A1(net4),
    .S(net6),
    .X(_28_));
 sky130_fd_sc_hd__or2b_1 _59_ (.A(net11),
    .B_N(_28_),
    .X(_29_));
 sky130_fd_sc_hd__a21oi_1 _60_ (.A1(_27_),
    .A2(_29_),
    .B1(net10),
    .Y(_00_));
 sky130_fd_sc_hd__mux2_1 _61_ (.A0(net16),
    .A1(net8),
    .S(net12),
    .X(_30_));
 sky130_fd_sc_hd__a21oi_1 _62_ (.A1(_24_),
    .A2(net7),
    .B1(net10),
    .Y(_31_));
 sky130_fd_sc_hd__o21a_1 _63_ (.A1(net7),
    .A2(_30_),
    .B1(_31_),
    .X(_01_));
 sky130_fd_sc_hd__dfxtp_1 _64_ (.CLK(clknet_1_1__leaf_clk),
    .D(_00_),
    .Q(net17));
 sky130_fd_sc_hd__dfxtp_1 _65_ (.CLK(clknet_1_0__leaf_clk),
    .D(_01_),
    .Q(net16));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_12 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_13 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_14 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_15 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_16 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_17 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_18 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_19 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(d),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(dl),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(dr),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(in_data),
    .X(net4));
 sky130_fd_sc_hd__buf_1 input5 (.A(l),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(load_in),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(load_out),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(prev_out_data),
    .X(net8));
 sky130_fd_sc_hd__buf_1 input9 (.A(r),
    .X(net9));
 sky130_fd_sc_hd__buf_1 input10 (.A(reset),
    .X(net10));
 sky130_fd_sc_hd__buf_1 input11 (.A(run),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(shift),
    .X(net12));
 sky130_fd_sc_hd__buf_1 input13 (.A(u),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_1 input14 (.A(ul),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_1 input15 (.A(ur),
    .X(net15));
 sky130_fd_sc_hd__buf_2 output16 (.A(net16),
    .X(out_data));
 sky130_fd_sc_hd__buf_2 output17 (.A(net17),
    .X(state));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__decap_4 FILLER_0_24 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_53 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_63 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_68 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_23 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_37 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_54 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_73 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_26 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_76 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_80 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_14 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_31 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_48 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_71 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_77 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_49 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_67 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_76 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_80 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_21 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_50 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_63 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_67 ();
endmodule
