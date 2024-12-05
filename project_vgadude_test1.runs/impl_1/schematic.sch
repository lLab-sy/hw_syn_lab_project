# File saved with Nlview 7.7.1 2023-07-26 3bc4126617 VDI=43 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 18
property maxzoom 7.5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 18
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new top work:top:NOFILE -nosplit
load symbol RTL_MUX60 work MUX pin S input.bot pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_INV8 work INV pinBus I0 input [7:0] pinBus O output [7:0] fillcolor 1
load symbol clockDiv work:abstract:NOFILE HIERBOX pin clk input.left pin clkDiv output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol clockDiv work:clockDiv:NOFILE HIERBOX pin clk input.left pin clkDiv output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol quadSevenSeg work:quadSevenSeg:NOFILE HIERBOX pin an0 output.right pin an1 output.right pin an2 output.right pin an3 output.right pin clk input.left pin dp output.right pinBus num0 input.left [3:0] pinBus num1 input.left [3:0] pinBus num2 input.left [3:0] pinBus num3 input.left [3:0] pinBus seg output.right [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol text_screen_gen work:text_screen_gen:NOFILE HIERBOX pin clk input.left pin down input.left pin en input.left pin left input.left pin reset input.left pin right input.left pin set input.left pin up input.left pin video_on input.left pinBus data_fk input.left [7:0] pinBus rgb output.right [11:0] pinBus sw input.left [7:0] pinBus x input.left [9:0] pinBus y input.left [9:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol uart work:abstract:NOFILE HIERBOX pin RsRx input.left pin RsTx output.right pin clk input.left pin mode input.left pin received output.right pinBus data_in input.left [7:0] pinBus data_out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol uart work:uart:NOFILE HIERBOX pin RsRx input.left pin RsTx output.right pin clk input.left pin mode input.left pin received output.right pinBus data_in input.left [7:0] pinBus data_out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol vga_controller work:vga_controller:NOFILE HIERBOX pin clk_100MHz input.left pin hsync output.right pin p_tick output.right pin reset input.left pin video_on output.right pin vsync output.right pinBus x output.right [9:0] pinBus y output.right [9:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_REG_ASYNC__BREG_103 workCLR,PRE[7:0]swwww GEN pin C input.clk.left pinBus CLR input.neg.top [7:0] pinBus D input.left [7:0] pinBus PRE input.neg.bot [7:0] pinBus Q output.right [7:0] fillcolor 1 sandwich 3 prop @bundle 8
load symbol RTL_REG__BREG_29 work[11:0]ssww GEN pin C input.clk.left pin CE input.left pinBus D input.left [11:0] pinBus Q output.right [11:0] fillcolor 1 sandwich 3 prop @bundle 12
load port RsRx input -pg 1 -lvl 0 -x 0 -y 150
load port RsTx output -pg 1 -lvl 21 -x 3890 -y 690
load port clk input -pg 1 -lvl 0 -x 0 -y 180
load port dp output -pg 1 -lvl 21 -x 3890 -y 140
load port hsync output -pg 1 -lvl 21 -x 3890 -y 720
load port ja1 input -pg 1 -lvl 0 -x 0 -y 570
load port ja2 output -pg 1 -lvl 21 -x 3890 -y 250
load port reset input -pg 1 -lvl 0 -x 0 -y 710
load port set input -pg 1 -lvl 0 -x 0 -y 380
load port vsync output -pg 1 -lvl 21 -x 3890 -y 870
load portBus an output [3:0] -attr @name an[3:0] -pg 1 -lvl 21 -x 3890 -y 60
load portBus rgb output [11:0] -attr @name rgb[11:0] -pg 1 -lvl 21 -x 3890 -y 790
load portBus seg output [6:0] -attr @name seg[6:0] -pg 1 -lvl 21 -x 3890 -y 170
load portBus sw input [7:0] -attr @name sw[7:0] -pg 1 -lvl 0 -x 0 -y 410
load inst display_out0_i RTL_MUX60 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 18 -x 2980 -y 310
load inst display_out0_i__0 RTL_MUX60 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 18 -x 2980 -y 430
load inst display_out1_i RTL_INV8 work -attr @cell(#000000) RTL_INV -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 17 -x 2670 -y 420
load inst ffdiv clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 19 -x 3410 -y 50
load inst genblk1[0].div clockDiv work:clockDiv:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 1 -x 70 -y 50
load inst genblk1[10].div clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 11 -x 1670 -y 50
load inst genblk1[11].div clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 12 -x 1830 -y 50
load inst genblk1[12].div clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 13 -x 1990 -y 50
load inst genblk1[13].div clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 14 -x 2150 -y 50
load inst genblk1[14].div clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 15 -x 2310 -y 50
load inst genblk1[15].div clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 16 -x 2470 -y 50
load inst genblk1[16].div clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 17 -x 2670 -y 50
load inst genblk1[17].div clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 18 -x 2980 -y 50
load inst genblk1[1].div clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 2 -x 230 -y 50
load inst genblk1[2].div clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 3 -x 390 -y 50
load inst genblk1[3].div clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 4 -x 550 -y 50
load inst genblk1[4].div clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 5 -x 710 -y 50
load inst genblk1[5].div clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 6 -x 870 -y 50
load inst genblk1[6].div clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 7 -x 1030 -y 50
load inst genblk1[7].div clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 8 -x 1190 -y 50
load inst genblk1[8].div clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 9 -x 1350 -y 50
load inst genblk1[9].div clockDiv work:abstract:NOFILE -autohide -attr @cell(#000000) clockDiv -pg 1 -lvl 10 -x 1510 -y 50
load inst tdm quadSevenSeg work:quadSevenSeg:NOFILE -autohide -attr @cell(#000000) quadSevenSeg -pinBusAttr num0 @name num0[3:0] -pinBusAttr num1 @name num1[3:0] -pinBusAttr num2 @name num2[3:0] -pinBusAttr num3 @name num3[3:0] -pinBusAttr seg @name seg[6:0] -pg 1 -lvl 20 -x 3730 -y 50
load inst tsg text_screen_gen work:text_screen_gen:NOFILE -autohide -attr @cell(#000000) text_screen_gen -pinAttr down @attr n/c -pinAttr left @attr n/c -pinAttr right @attr n/c -pinAttr up @attr n/c -pinBusAttr data_fk @name data_fk[7:0] -pinBusAttr rgb @name rgb[11:0] -pinBusAttr sw @name sw[7:0] -pinBusAttr x @name x[9:0] -pinBusAttr y @name y[9:0] -pg 1 -lvl 19 -x 3410 -y 480
load inst uartBoardToBoard uart work:abstract:NOFILE -autohide -attr @cell(#000000) uart -pinBusAttr data_in @name data_in[7:0] -pinBusAttr data_out @name data_out[7:0] -pg 1 -lvl 18 -x 2980 -y 140
load inst uartMyKeyboardToMyBasys uart work:uart:NOFILE -autohide -attr @cell(#000000) uart -pinBusAttr data_in @name data_in[7:0] -pinBusAttr data_out @name data_out[7:0] -pg 1 -lvl 18 -x 2980 -y 560
load inst vga vga_controller work:vga_controller:NOFILE -autohide -attr @cell(#000000) vga_controller -pinAttr reset @attr n/c -pinBusAttr x @name x[9:0] -pinBusAttr y @name y[9:0] -pg 1 -lvl 18 -x 2980 -y 760
load inst display_out_reg[7:0] RTL_REG_ASYNC__BREG_103 workCLR,PRE[7:0]swwww -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 19 -x 3410 -y 160
load inst rgb_reg_reg[11:0] RTL_REG__BREG_29 work[11:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 20 -x 3730 -y 790
load net <const0> -ground -pin uartMyKeyboardToMyBasys mode -pin uartMyKeyboardToMyBasys data_in[7] -pin uartMyKeyboardToMyBasys data_in[6] -pin uartMyKeyboardToMyBasys data_in[5] -pin uartMyKeyboardToMyBasys data_in[4] -pin uartMyKeyboardToMyBasys data_in[3] -pin uartMyKeyboardToMyBasys data_in[2] -pin uartMyKeyboardToMyBasys data_in[1] -pin uartMyKeyboardToMyBasys data_in[0]
load net <const1> -power -pin display_out0_i I1[7] -pin display_out0_i I1[6] -pin display_out0_i I1[5] -pin display_out0_i I1[4] -pin display_out0_i I1[3] -pin display_out0_i I1[2] -pin display_out0_i I1[1] -pin display_out0_i I1[0] -pin display_out0_i__0 I1[7] -pin display_out0_i__0 I1[6] -pin display_out0_i__0 I1[5] -pin display_out0_i__0 I1[4] -pin display_out0_i__0 I1[3] -pin display_out0_i__0 I1[2] -pin display_out0_i__0 I1[1] -pin display_out0_i__0 I1[0]
load net RsRx -port RsRx -pin uartBoardToBoard RsRx
netloc RsRx 1 0 18 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ
load net RsTx -port RsTx -pin uartMyKeyboardToMyBasys RsTx
netloc RsTx 1 18 3 3210J 690 NJ 690 NJ
load net an[0] -attr @rip(#000000) 0 -port an[0] -pin tdm an0
load net an[1] -attr @rip(#000000) 1 -port an[1] -pin tdm an1
load net an[2] -attr @rip(#000000) 2 -port an[2] -pin tdm an2
load net an[3] -attr @rip(#000000) 3 -port an[3] -pin tdm an3
load net clk -port clk -pin genblk1[0].div clk -pin rgb_reg_reg[11:0] C -pin tsg clk -pin uartBoardToBoard clk -pin uartMyKeyboardToMyBasys clk -pin vga clk_100MHz
netloc clk 1 0 20 20 170 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 2800 690 3150 750 3620
load net data_fk[0] -attr @rip(#000000) data_out[0] -pin tdm num0[0] -pin tsg data_fk[0] -pin uartMyKeyboardToMyBasys data_out[0]
load net data_fk[1] -attr @rip(#000000) data_out[1] -pin tdm num0[1] -pin tsg data_fk[1] -pin uartMyKeyboardToMyBasys data_out[1]
load net data_fk[2] -attr @rip(#000000) data_out[2] -pin tdm num0[2] -pin tsg data_fk[2] -pin uartMyKeyboardToMyBasys data_out[2]
load net data_fk[3] -attr @rip(#000000) data_out[3] -pin tdm num0[3] -pin tsg data_fk[3] -pin uartMyKeyboardToMyBasys data_out[3]
load net data_fk[4] -attr @rip(#000000) data_out[4] -pin tdm num1[0] -pin tsg data_fk[4] -pin uartMyKeyboardToMyBasys data_out[4]
load net data_fk[5] -attr @rip(#000000) data_out[5] -pin tdm num1[1] -pin tsg data_fk[5] -pin uartMyKeyboardToMyBasys data_out[5]
load net data_fk[6] -attr @rip(#000000) data_out[6] -pin tdm num1[2] -pin tsg data_fk[6] -pin uartMyKeyboardToMyBasys data_out[6]
load net data_fk[7] -attr @rip(#000000) data_out[7] -pin tdm num1[3] -pin tsg data_fk[7] -pin uartMyKeyboardToMyBasys data_out[7]
load net data_waste[0] -attr @rip(#000000) data_out[0] -pin display_out_reg[7:0] D[0] -pin uartBoardToBoard data_out[0]
load net data_waste[1] -attr @rip(#000000) data_out[1] -pin display_out_reg[7:0] D[1] -pin uartBoardToBoard data_out[1]
load net data_waste[2] -attr @rip(#000000) data_out[2] -pin display_out_reg[7:0] D[2] -pin uartBoardToBoard data_out[2]
load net data_waste[3] -attr @rip(#000000) data_out[3] -pin display_out_reg[7:0] D[3] -pin uartBoardToBoard data_out[3]
load net data_waste[4] -attr @rip(#000000) data_out[4] -pin display_out_reg[7:0] D[4] -pin uartBoardToBoard data_out[4]
load net data_waste[5] -attr @rip(#000000) data_out[5] -pin display_out_reg[7:0] D[5] -pin uartBoardToBoard data_out[5]
load net data_waste[6] -attr @rip(#000000) data_out[6] -pin display_out_reg[7:0] D[6] -pin uartBoardToBoard data_out[6]
load net data_waste[7] -attr @rip(#000000) data_out[7] -pin display_out_reg[7:0] D[7] -pin uartBoardToBoard data_out[7]
load net display_out0[0] -attr @rip(#000000) O[0] -pin display_out0_i O[0] -pin display_out_reg[7:0] CLR[0]
load net display_out0[1] -attr @rip(#000000) O[1] -pin display_out0_i O[1] -pin display_out_reg[7:0] CLR[1]
load net display_out0[2] -attr @rip(#000000) O[2] -pin display_out0_i O[2] -pin display_out_reg[7:0] CLR[2]
load net display_out0[3] -attr @rip(#000000) O[3] -pin display_out0_i O[3] -pin display_out_reg[7:0] CLR[3]
load net display_out0[4] -attr @rip(#000000) O[4] -pin display_out0_i O[4] -pin display_out_reg[7:0] CLR[4]
load net display_out0[5] -attr @rip(#000000) O[5] -pin display_out0_i O[5] -pin display_out_reg[7:0] CLR[5]
load net display_out0[6] -attr @rip(#000000) O[6] -pin display_out0_i O[6] -pin display_out_reg[7:0] CLR[6]
load net display_out0[7] -attr @rip(#000000) O[7] -pin display_out0_i O[7] -pin display_out_reg[7:0] CLR[7]
load net display_out0_i__0_n_0 -attr @rip(#000000) O[7] -pin display_out0_i__0 O[7] -pin display_out_reg[7:0] PRE[7]
load net display_out0_i__0_n_1 -attr @rip(#000000) O[6] -pin display_out0_i__0 O[6] -pin display_out_reg[7:0] PRE[6]
load net display_out0_i__0_n_2 -attr @rip(#000000) O[5] -pin display_out0_i__0 O[5] -pin display_out_reg[7:0] PRE[5]
load net display_out0_i__0_n_3 -attr @rip(#000000) O[4] -pin display_out0_i__0 O[4] -pin display_out_reg[7:0] PRE[4]
load net display_out0_i__0_n_4 -attr @rip(#000000) O[3] -pin display_out0_i__0 O[3] -pin display_out_reg[7:0] PRE[3]
load net display_out0_i__0_n_5 -attr @rip(#000000) O[2] -pin display_out0_i__0 O[2] -pin display_out_reg[7:0] PRE[2]
load net display_out0_i__0_n_6 -attr @rip(#000000) O[1] -pin display_out0_i__0 O[1] -pin display_out_reg[7:0] PRE[1]
load net display_out0_i__0_n_7 -attr @rip(#000000) O[0] -pin display_out0_i__0 O[0] -pin display_out_reg[7:0] PRE[0]
load net display_out1[0] -attr @rip(#000000) O[0] -pin display_out0_i__0 I0[0] -pin display_out1_i O[0]
load net display_out1[1] -attr @rip(#000000) O[1] -pin display_out0_i__0 I0[1] -pin display_out1_i O[1]
load net display_out1[2] -attr @rip(#000000) O[2] -pin display_out0_i__0 I0[2] -pin display_out1_i O[2]
load net display_out1[3] -attr @rip(#000000) O[3] -pin display_out0_i__0 I0[3] -pin display_out1_i O[3]
load net display_out1[4] -attr @rip(#000000) O[4] -pin display_out0_i__0 I0[4] -pin display_out1_i O[4]
load net display_out1[5] -attr @rip(#000000) O[5] -pin display_out0_i__0 I0[5] -pin display_out1_i O[5]
load net display_out1[6] -attr @rip(#000000) O[6] -pin display_out0_i__0 I0[6] -pin display_out1_i O[6]
load net display_out1[7] -attr @rip(#000000) O[7] -pin display_out0_i__0 I0[7] -pin display_out1_i O[7]
load net display_out[0] -attr @rip(#000000) 0 -pin display_out_reg[7:0] Q[0] -pin tdm num2[0]
load net display_out[1] -attr @rip(#000000) 1 -pin display_out_reg[7:0] Q[1] -pin tdm num2[1]
load net display_out[2] -attr @rip(#000000) 2 -pin display_out_reg[7:0] Q[2] -pin tdm num2[2]
load net display_out[3] -attr @rip(#000000) 3 -pin display_out_reg[7:0] Q[3] -pin tdm num2[3]
load net display_out[4] -attr @rip(#000000) 0 -pin display_out_reg[7:0] Q[4] -pin tdm num3[0]
load net display_out[5] -attr @rip(#000000) 1 -pin display_out_reg[7:0] Q[5] -pin tdm num3[1]
load net display_out[6] -attr @rip(#000000) 2 -pin display_out_reg[7:0] Q[6] -pin tdm num3[2]
load net display_out[7] -attr @rip(#000000) 3 -pin display_out_reg[7:0] Q[7] -pin tdm num3[3]
load net dp -port dp -pin tdm dp
netloc dp 1 20 1 NJ 140
load net en1 -pin tsg en -pin uartMyKeyboardToMyBasys received
netloc en1 1 18 1 3230 530n
load net en2 -pin display_out_reg[7:0] C -pin uartBoardToBoard received
netloc en2 1 18 1 3250 150n
load net hsync -port hsync -pin vga hsync
netloc hsync 1 18 3 NJ 770 3600J 720 NJ
load net ja1 -port ja1 -pin uartMyKeyboardToMyBasys RsRx
netloc ja1 1 0 18 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ
load net ja2 -port ja2 -pin uartBoardToBoard RsTx
netloc ja2 1 18 3 3190J 250 NJ 250 NJ
load net reset -port reset -pin tsg reset
netloc reset 1 0 19 NJ 710 NJ 710 NJ 710 NJ 710 NJ 710 NJ 710 NJ 710 NJ 710 NJ 710 NJ 710 NJ 710 NJ 710 NJ 710 NJ 710 NJ 710 NJ 710 NJ 710 NJ 710 3270J
load net rgb[0] -attr @rip(#000000) 0 -port rgb[0] -pin rgb_reg_reg[11:0] Q[0]
load net rgb[10] -attr @rip(#000000) 10 -port rgb[10] -pin rgb_reg_reg[11:0] Q[10]
load net rgb[11] -attr @rip(#000000) 11 -port rgb[11] -pin rgb_reg_reg[11:0] Q[11]
load net rgb[1] -attr @rip(#000000) 1 -port rgb[1] -pin rgb_reg_reg[11:0] Q[1]
load net rgb[2] -attr @rip(#000000) 2 -port rgb[2] -pin rgb_reg_reg[11:0] Q[2]
load net rgb[3] -attr @rip(#000000) 3 -port rgb[3] -pin rgb_reg_reg[11:0] Q[3]
load net rgb[4] -attr @rip(#000000) 4 -port rgb[4] -pin rgb_reg_reg[11:0] Q[4]
load net rgb[5] -attr @rip(#000000) 5 -port rgb[5] -pin rgb_reg_reg[11:0] Q[5]
load net rgb[6] -attr @rip(#000000) 6 -port rgb[6] -pin rgb_reg_reg[11:0] Q[6]
load net rgb[7] -attr @rip(#000000) 7 -port rgb[7] -pin rgb_reg_reg[11:0] Q[7]
load net rgb[8] -attr @rip(#000000) 8 -port rgb[8] -pin rgb_reg_reg[11:0] Q[8]
load net rgb[9] -attr @rip(#000000) 9 -port rgb[9] -pin rgb_reg_reg[11:0] Q[9]
load net rgb_next[0] -attr @rip(#000000) rgb[0] -pin rgb_reg_reg[11:0] D[0] -pin tsg rgb[0]
load net rgb_next[10] -attr @rip(#000000) rgb[10] -pin rgb_reg_reg[11:0] D[10] -pin tsg rgb[10]
load net rgb_next[11] -attr @rip(#000000) rgb[11] -pin rgb_reg_reg[11:0] D[11] -pin tsg rgb[11]
load net rgb_next[1] -attr @rip(#000000) rgb[1] -pin rgb_reg_reg[11:0] D[1] -pin tsg rgb[1]
load net rgb_next[2] -attr @rip(#000000) rgb[2] -pin rgb_reg_reg[11:0] D[2] -pin tsg rgb[2]
load net rgb_next[3] -attr @rip(#000000) rgb[3] -pin rgb_reg_reg[11:0] D[3] -pin tsg rgb[3]
load net rgb_next[4] -attr @rip(#000000) rgb[4] -pin rgb_reg_reg[11:0] D[4] -pin tsg rgb[4]
load net rgb_next[5] -attr @rip(#000000) rgb[5] -pin rgb_reg_reg[11:0] D[5] -pin tsg rgb[5]
load net rgb_next[6] -attr @rip(#000000) rgb[6] -pin rgb_reg_reg[11:0] D[6] -pin tsg rgb[6]
load net rgb_next[7] -attr @rip(#000000) rgb[7] -pin rgb_reg_reg[11:0] D[7] -pin tsg rgb[7]
load net rgb_next[8] -attr @rip(#000000) rgb[8] -pin rgb_reg_reg[11:0] D[8] -pin tsg rgb[8]
load net rgb_next[9] -attr @rip(#000000) rgb[9] -pin rgb_reg_reg[11:0] D[9] -pin tsg rgb[9]
load net seg[0] -attr @rip(#000000) seg[0] -port seg[0] -pin tdm seg[0]
load net seg[1] -attr @rip(#000000) seg[1] -port seg[1] -pin tdm seg[1]
load net seg[2] -attr @rip(#000000) seg[2] -port seg[2] -pin tdm seg[2]
load net seg[3] -attr @rip(#000000) seg[3] -port seg[3] -pin tdm seg[3]
load net seg[4] -attr @rip(#000000) seg[4] -port seg[4] -pin tdm seg[4]
load net seg[5] -attr @rip(#000000) seg[5] -port seg[5] -pin tdm seg[5]
load net seg[6] -attr @rip(#000000) seg[6] -port seg[6] -pin tdm seg[6]
load net set -pin display_out0_i S -pin display_out0_i__0 S -port set -pin tsg set -pin uartBoardToBoard mode
netloc set 1 0 19 NJ 380 NJ 380 NJ 380 NJ 380 NJ 380 NJ 380 NJ 380 NJ 380 NJ 380 NJ 380 NJ 380 NJ 380 NJ 380 NJ 380 NJ 380 NJ 380 NJ 380 2840 370N 3250
load net sw[0] -attr @rip(#000000) sw[0] -pin display_out0_i I0[0] -pin display_out1_i I0[0] -port sw[0] -pin tsg sw[0] -pin uartBoardToBoard data_in[0]
load net sw[1] -attr @rip(#000000) sw[1] -pin display_out0_i I0[1] -pin display_out1_i I0[1] -port sw[1] -pin tsg sw[1] -pin uartBoardToBoard data_in[1]
load net sw[2] -attr @rip(#000000) sw[2] -pin display_out0_i I0[2] -pin display_out1_i I0[2] -port sw[2] -pin tsg sw[2] -pin uartBoardToBoard data_in[2]
load net sw[3] -attr @rip(#000000) sw[3] -pin display_out0_i I0[3] -pin display_out1_i I0[3] -port sw[3] -pin tsg sw[3] -pin uartBoardToBoard data_in[3]
load net sw[4] -attr @rip(#000000) sw[4] -pin display_out0_i I0[4] -pin display_out1_i I0[4] -port sw[4] -pin tsg sw[4] -pin uartBoardToBoard data_in[4]
load net sw[5] -attr @rip(#000000) sw[5] -pin display_out0_i I0[5] -pin display_out1_i I0[5] -port sw[5] -pin tsg sw[5] -pin uartBoardToBoard data_in[5]
load net sw[6] -attr @rip(#000000) sw[6] -pin display_out0_i I0[6] -pin display_out1_i I0[6] -port sw[6] -pin tsg sw[6] -pin uartBoardToBoard data_in[6]
load net sw[7] -attr @rip(#000000) sw[7] -pin display_out0_i I0[7] -pin display_out1_i I0[7] -port sw[7] -pin tsg sw[7] -pin uartBoardToBoard data_in[7]
load net targetClk -pin ffdiv clkDiv -pin tdm clk
netloc targetClk 1 19 1 NJ 60
load net tclk_1 -pin genblk1[0].div clkDiv -pin genblk1[1].div clk
netloc tclk_1 1 1 1 NJ 60
load net tclk_10 -pin genblk1[10].div clk -pin genblk1[9].div clkDiv
netloc tclk_10 1 10 1 NJ 60
load net tclk_11 -pin genblk1[10].div clkDiv -pin genblk1[11].div clk
netloc tclk_11 1 11 1 NJ 60
load net tclk_12 -pin genblk1[11].div clkDiv -pin genblk1[12].div clk
netloc tclk_12 1 12 1 NJ 60
load net tclk_13 -pin genblk1[12].div clkDiv -pin genblk1[13].div clk
netloc tclk_13 1 13 1 NJ 60
load net tclk_14 -pin genblk1[13].div clkDiv -pin genblk1[14].div clk
netloc tclk_14 1 14 1 NJ 60
load net tclk_15 -pin genblk1[14].div clkDiv -pin genblk1[15].div clk
netloc tclk_15 1 15 1 NJ 60
load net tclk_16 -pin genblk1[15].div clkDiv -pin genblk1[16].div clk
netloc tclk_16 1 16 1 NJ 60
load net tclk_17 -pin genblk1[16].div clkDiv -pin genblk1[17].div clk
netloc tclk_17 1 17 1 NJ 60
load net tclk_18 -pin ffdiv clk -pin genblk1[17].div clkDiv
netloc tclk_18 1 18 1 NJ 60
load net tclk_2 -pin genblk1[1].div clkDiv -pin genblk1[2].div clk
netloc tclk_2 1 2 1 NJ 60
load net tclk_3 -pin genblk1[2].div clkDiv -pin genblk1[3].div clk
netloc tclk_3 1 3 1 NJ 60
load net tclk_4 -pin genblk1[3].div clkDiv -pin genblk1[4].div clk
netloc tclk_4 1 4 1 NJ 60
load net tclk_5 -pin genblk1[4].div clkDiv -pin genblk1[5].div clk
netloc tclk_5 1 5 1 NJ 60
load net tclk_6 -pin genblk1[5].div clkDiv -pin genblk1[6].div clk
netloc tclk_6 1 6 1 NJ 60
load net tclk_7 -pin genblk1[6].div clkDiv -pin genblk1[7].div clk
netloc tclk_7 1 7 1 NJ 60
load net tclk_8 -pin genblk1[7].div clkDiv -pin genblk1[8].div clk
netloc tclk_8 1 8 1 NJ 60
load net tclk_9 -pin genblk1[8].div clkDiv -pin genblk1[9].div clk
netloc tclk_9 1 9 1 NJ 60
load net vsync -pin vga vsync -port vsync
netloc vsync 1 18 3 3290J 870 NJ 870 NJ
load net w_p_tick -pin rgb_reg_reg[11:0] CE -pin vga p_tick
netloc w_p_tick 1 18 2 NJ 790 N
load net w_vid_on -pin tsg video_on -pin vga video_on
netloc w_vid_on 1 18 1 3290 610n
load net w_x[0] -attr @rip(#000000) x[0] -pin tsg x[0] -pin vga x[0]
load net w_x[1] -attr @rip(#000000) x[1] -pin tsg x[1] -pin vga x[1]
load net w_x[2] -attr @rip(#000000) x[2] -pin tsg x[2] -pin vga x[2]
load net w_x[3] -attr @rip(#000000) x[3] -pin tsg x[3] -pin vga x[3]
load net w_x[4] -attr @rip(#000000) x[4] -pin tsg x[4] -pin vga x[4]
load net w_x[5] -attr @rip(#000000) x[5] -pin tsg x[5] -pin vga x[5]
load net w_x[6] -attr @rip(#000000) x[6] -pin tsg x[6] -pin vga x[6]
load net w_x[7] -attr @rip(#000000) x[7] -pin tsg x[7] -pin vga x[7]
load net w_x[8] -attr @rip(#000000) x[8] -pin tsg x[8] -pin vga x[8]
load net w_x[9] -attr @rip(#000000) x[9] -pin tsg x[9] -pin vga x[9]
load net w_y[0] -attr @rip(#000000) y[0] -pin tsg y[0] -pin vga y[0]
load net w_y[1] -attr @rip(#000000) y[1] -pin tsg y[1] -pin vga y[1]
load net w_y[2] -attr @rip(#000000) y[2] -pin tsg y[2] -pin vga y[2]
load net w_y[3] -attr @rip(#000000) y[3] -pin tsg y[3] -pin vga y[3]
load net w_y[4] -attr @rip(#000000) y[4] -pin tsg y[4] -pin vga y[4]
load net w_y[5] -attr @rip(#000000) y[5] -pin tsg y[5] -pin vga y[5]
load net w_y[6] -attr @rip(#000000) y[6] -pin tsg y[6] -pin vga y[6]
load net w_y[7] -attr @rip(#000000) y[7] -pin tsg y[7] -pin vga y[7]
load net w_y[8] -attr @rip(#000000) y[8] -pin tsg y[8] -pin vga y[8]
load net w_y[9] -attr @rip(#000000) y[9] -pin tsg y[9] -pin vga y[9]
load netBundle @sw 8 sw[7] sw[6] sw[5] sw[4] sw[3] sw[2] sw[1] sw[0] -autobundled
netbloc @sw 1 0 19 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 2600 360 2820 510 3170J
load netBundle @an 4 an[3] an[2] an[1] an[0] -autobundled
netbloc @an 1 20 1 3870 60n
load netBundle @rgb 12 rgb[11] rgb[10] rgb[9] rgb[8] rgb[7] rgb[6] rgb[5] rgb[4] rgb[3] rgb[2] rgb[1] rgb[0] -autobundled
netbloc @rgb 1 20 1 NJ 790
load netBundle @seg 7 seg[6] seg[5] seg[4] seg[3] seg[2] seg[1] seg[0] -autobundled
netbloc @seg 1 20 1 3870J 160n
load netBundle @display_out0 8 display_out0[7] display_out0[6] display_out0[5] display_out0[4] display_out0[3] display_out0[2] display_out0[1] display_out0[0] -autobundled
netbloc @display_out0 1 18 1 3150 100n
load netBundle @display_out0_i__0_n_ 8 display_out0_i__0_n_0 display_out0_i__0_n_1 display_out0_i__0_n_2 display_out0_i__0_n_3 display_out0_i__0_n_4 display_out0_i__0_n_5 display_out0_i__0_n_6 display_out0_i__0_n_7 -autobundled
netbloc @display_out0_i__0_n_ 1 18 1 3170 230n
load netBundle @display_out1 8 display_out1[7] display_out1[6] display_out1[5] display_out1[4] display_out1[3] display_out1[2] display_out1[1] display_out1[0] -autobundled
netbloc @display_out1 1 17 1 NJ 420
load netBundle @rgb_next 12 rgb_next[11] rgb_next[10] rgb_next[9] rgb_next[8] rgb_next[7] rgb_next[6] rgb_next[5] rgb_next[4] rgb_next[3] rgb_next[2] rgb_next[1] rgb_next[0] -autobundled
netbloc @rgb_next 1 19 1 3640 570n
load netBundle @data_waste 8 data_waste[7] data_waste[6] data_waste[5] data_waste[4] data_waste[3] data_waste[2] data_waste[1] data_waste[0] -autobundled
netbloc @data_waste 1 18 1 N 170
load netBundle @data_fk 8 data_fk[7] data_fk[6] data_fk[5] data_fk[4] data_fk[3] data_fk[2] data_fk[1] data_fk[0] -autobundled
netbloc @data_fk 1 18 2 3190 280 3600
load netBundle @w_x 10 w_x[9] w_x[8] w_x[7] w_x[6] w_x[5] w_x[4] w_x[3] w_x[2] w_x[1] w_x[0] -autobundled
netbloc @w_x 1 18 1 3310 630n
load netBundle @w_y 10 w_y[9] w_y[8] w_y[7] w_y[6] w_y[5] w_y[4] w_y[3] w_y[2] w_y[1] w_y[0] -autobundled
netbloc @w_y 1 18 1 3230 650n
load netBundle @display_out 8 display_out[7] display_out[6] display_out[5] display_out[4] display_out[3] display_out[2] display_out[1] display_out[0] -autobundled
netbloc @display_out 1 19 1 3640 120n
levelinfo -pg 1 0 70 230 390 550 710 870 1030 1190 1350 1510 1670 1830 1990 2150 2310 2470 2670 2980 3410 3730 3890
pagesize -pg 1 -db -bbox -sgen -100 0 4000 910
show
zoom 0.373196
scrollpos -35 -193
#
# initialize ictrl to current module top work:top:NOFILE
ictrl init topinfo |
