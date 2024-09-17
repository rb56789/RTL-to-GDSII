`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: PhD
// Engineer:ANURAJ V 
// 
// Create Date: 03/01/2024 10:40:40 AM
// Design Name: 
// Module Name: WA_16
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module FA(a,b,cin,sum,carry);
    input a,b,cin;
    output sum,carry;
    
wire [2:0] faw;     

xor(faw[0],a,b);
xor(sum,faw[0],cin);        

and(faw[1],a,b);
and(faw[2],faw[0],cin);

or(carry,faw[1],faw[2]);    
endmodule

module HA(a,b,sum_h,carry_h);
    input a,b;
    output sum_h,carry_h;
 xor(sum_h, a, b);
 and(carry_h, a, b);
endmodule

module WA_16(x,y,z);
input [15:0] x,y;
output [32:0] z;

//wire [62:0] p;
wire [60:0] hca;
wire [60:0] hsu;
wire [250:0] fca;
wire [250:0] fsu;

    reg[15:0] pp[15:0];
    integer i, j;

    always @(x, y) begin
        for(i = 0;i < 16;i = i+1)
            for(j = 0;j < 16;j = j+1)
                pp[i][j] = x[i] & y[j];
    end

assign z[0] = pp[0][0];

//1st stage
HA HA1 (.a(pp[1][0]),.b(pp[0][1]),.sum_h(z[1]),.carry_h(hca[1]));//p1
FA FA1 (.a(pp[2][0]),.b(pp[1][1]),.cin(pp[0][2]),.sum(fsu[1]),.carry(fca[1]));
FA FA2 (.a(pp[3][0]),.b(pp[2][1]),.cin(pp[1][2]),.sum(fsu[2]),.carry(fca[2]));
FA FA3 (.a(pp[4][0]),.b(pp[3][1]),.cin(pp[2][2]),.sum(fsu[3]),.carry(fca[3]));
HA HA2 (.a(pp[1][3]),.b(pp[0][4]),.sum_h(hsu[2]),.carry_h(hca[2]));
FA FA4 (.a(pp[5][0]),.b(pp[4][1]),.cin(pp[3][2]),.sum(fsu[4]),.carry(fca[4]));
FA FA5 (.a(pp[2][3]),.b(pp[1][4]),.cin(pp[0][5]),.sum(fsu[5]),.carry(fca[5]));
FA FA6 (.a(pp[6][0]),.b(pp[5][1]),.cin(pp[4][2]),.sum(fsu[6]),.carry(fca[6]));
FA FA7 (.a(pp[3][3]),.b(pp[2][4]),.cin(pp[1][5]),.sum(fsu[7]),.carry(fca[7]));
FA FA8 (.a(pp[7][0]),.b(pp[6][1]),.cin(pp[5][2]),.sum(fsu[8]),.carry(fca[8]));
FA FA9 (.a(pp[4][3]),.b(pp[3][4]),.cin(pp[2][5]),.sum(fsu[9]),.carry(fca[9]));
HA HA3 (.a(pp[1][6]),.b(pp[0][7]),.sum_h(hsu[3]),.carry_h(hca[3]));
FA FA10 (.a(pp[8][0]),.b(pp[7][1]),.cin(pp[6][2]),.sum(fsu[10]),.carry(fca[10]));
FA FA11 (.a(pp[5][3]),.b(pp[4][4]),.cin(pp[3][5]),.sum(fsu[11]),.carry(fca[11]));
FA FA12 (.a(pp[2][6]),.b(pp[1][7]),.cin(pp[0][8]),.sum(fsu[12]),.carry(fca[12]));
FA FA13 (.a(pp[9][0]),.b(pp[8][1]),.cin(pp[7][2]),.sum(fsu[13]),.carry(fca[13]));
FA FA14 (.a(pp[6][3]),.b(pp[5][4]),.cin(pp[4][5]),.sum(fsu[14]),.carry(fca[14]));
FA FA15 (.a(pp[3][6]),.b(pp[2][7]),.cin(pp[1][8]),.sum(fsu[15]),.carry(fca[15]));
FA FA16 (.a(pp[10][0]),.b(pp[9][1]),.cin(pp[8][2]),.sum(fsu[16]),.carry(fca[16]));
FA FA17 (.a(pp[7][3]),.b(pp[6][4]),.cin(pp[5][5]),.sum(fsu[17]),.carry(fca[17]));
FA FA18 (.a(pp[4][6]),.b(pp[3][7]),.cin(pp[2][8]),.sum(fsu[18]),.carry(fca[18]));
HA HA4 (.a(pp[1][9]),.b(pp[0][10]),.sum_h(hsu[4]),.carry_h(hca[4]));
FA FA19 (.a(pp[11][0]),.b(pp[10][1]),.cin(pp[9][2]),.sum(fsu[19]),.carry(fca[19]));
FA FA20 (.a(pp[8][3]),.b(pp[7][4]),.cin(pp[6][5]),.sum(fsu[20]),.carry(fca[20]));
FA FA21 (.a(pp[5][6]),.b(pp[4][7]),.cin(pp[3][8]),.sum(fsu[21]),.carry(fca[21]));
FA FA22 (.a(pp[2][9]),.b(pp[1][10]),.cin(pp[0][11]),.sum(fsu[22]),.carry(fca[22]));
FA FA23 (.a(pp[12][0]),.b(pp[11][1]),.cin(pp[10][2]),.sum(fsu[23]),.carry(fca[23]));
FA FA24 (.a(pp[9][3]),.b(pp[8][4]),.cin(pp[7][5]),.sum(fsu[24]),.carry(fca[24]));
FA FA25 (.a(pp[6][6]),.b(pp[5][7]),.cin(pp[4][8]),.sum(fsu[25]),.carry(fca[25]));
FA FA26 (.a(pp[3][9]),.b(pp[2][10]),.cin(pp[1][11]),.sum(fsu[26]),.carry(fca[26]));
FA FA27 (.a(pp[13][0]),.b(pp[12][1]),.cin(pp[11][2]),.sum(fsu[27]),.carry(fca[27]));
FA FA28 (.a(pp[10][3]),.b(pp[9][4]),.cin(pp[8][5]),.sum(fsu[28]),.carry(fca[28]));
FA FA29 (.a(pp[7][6]),.b(pp[6][7]),.cin(pp[5][8]),.sum(fsu[29]),.carry(fca[29]));
FA FA30 (.a(pp[4][9]),.b(pp[3][10]),.cin(pp[2][11]),.sum(fsu[30]),.carry(fca[30]));
HA HA5 (.a(pp[1][12]),.b(pp[0][13]),.sum_h(hsu[5]),.carry_h(hca[5]));
FA FA31 (.a(pp[14][0]),.b(pp[13][1]),.cin(pp[12][2]),.sum(fsu[31]),.carry(fca[31]));
FA FA32 (.a(pp[11][3]),.b(pp[10][4]),.cin(pp[9][5]),.sum(fsu[32]),.carry(fca[32]));
FA FA33 (.a(pp[8][6]),.b(pp[7][7]),.cin(pp[6][8]),.sum(fsu[33]),.carry(fca[33]));
FA FA34 (.a(pp[5][9]),.b(pp[4][10]),.cin(pp[3][11]),.sum(fsu[34]),.carry(fca[34]));
FA FA35 (.a(pp[2][12]),.b(pp[1][13]),.cin(pp[0][14]),.sum(fsu[35]),.carry(fca[35]));
FA FA36 (.a(pp[15][0]),.b(pp[14][1]),.cin(pp[13][2]),.sum(fsu[36]),.carry(fca[36]));
FA FA37 (.a(pp[12][3]),.b(pp[11][4]),.cin(pp[10][5]),.sum(fsu[37]),.carry(fca[37]));
FA FA38 (.a(pp[9][6]),.b(pp[8][7]),.cin(pp[7][8]),.sum(fsu[38]),.carry(fca[38]));
FA FA39 (.a(pp[6][9]),.b(pp[5][10]),.cin(pp[4][11]),.sum(fsu[39]),.carry(fca[39]));
FA FA40 (.a(pp[3][12]),.b(pp[2][13]),.cin(pp[1][14]),.sum(fsu[40]),.carry(fca[40]));
HA HA6 (.a(pp[15][1]),.b(pp[14][2]),.sum_h(hsu[6]),.carry_h(hca[6]));
FA FA41 (.a(pp[13][3]),.b(pp[12][4]),.cin(pp[11][5]),.sum(fsu[41]),.carry(fca[41]));
FA FA42 (.a(pp[10][6]),.b(pp[9][7]),.cin(pp[8][8]),.sum(fsu[42]),.carry(fca[42]));
FA FA43 (.a(pp[7][9]),.b(pp[6][10]),.cin(pp[5][11]),.sum(fsu[43]),.carry(fca[43]));
FA FA44 (.a(pp[4][12]),.b(pp[3][13]),.cin(pp[2][14]),.sum(fsu[44]),.carry(fca[44]));
FA FA45 (.a(pp[14][3]),.b(pp[13][4]),.cin(pp[12][5]),.sum(fsu[45]),.carry(fca[45]));
FA FA46 (.a(pp[11][6]),.b(pp[10][7]),.cin(pp[9][8]),.sum(fsu[46]),.carry(fca[46]));
FA FA47 (.a(pp[8][9]),.b(pp[7][10]),.cin(pp[6][11]),.sum(fsu[47]),.carry(fca[47]));
FA FA48 (.a(pp[5][12]),.b(pp[4][13]),.cin(pp[3][14]),.sum(fsu[48]),.carry(fca[48]));
FA FA49 (.a(pp[15][3]),.b(pp[14][4]),.cin(pp[13][5]),.sum(fsu[49]),.carry(fca[49]));
FA FA50 (.a(pp[12][6]),.b(pp[11][7]),.cin(pp[10][8]),.sum(fsu[50]),.carry(fca[50]));
FA FA51 (.a(pp[9][9]),.b(pp[8][10]),.cin(pp[7][11]),.sum(fsu[51]),.carry(fca[51]));
FA FA52 (.a(pp[6][12]),.b(pp[5][13]),.cin(pp[4][14]),.sum(fsu[52]),.carry(fca[52]));
HA HA7 (.a(pp[15][4]),.b(pp[14][5]),.sum_h(hsu[7]),.carry_h(hca[7]));
FA FA53 (.a(pp[13][6]),.b(pp[12][7]),.cin(pp[11][8]),.sum(fsu[53]),.carry(fca[53]));
FA FA54 (.a(pp[10][9]),.b(pp[9][10]),.cin(pp[8][11]),.sum(fsu[54]),.carry(fca[54]));
FA FA55 (.a(pp[7][12]),.b(pp[6][13]),.cin(pp[5][14]),.sum(fsu[55]),.carry(fca[55]));
FA FA56 (.a(pp[14][6]),.b(pp[13][7]),.cin(pp[12][8]),.sum(fsu[56]),.carry(fca[56]));
FA FA57 (.a(pp[11][9]),.b(pp[10][10]),.cin(pp[9][11]),.sum(fsu[57]),.carry(fca[57]));
FA FA58 (.a(pp[8][12]),.b(pp[7][13]),.cin(pp[6][14]),.sum(fsu[58]),.carry(fca[58]));
FA FA59 (.a(pp[15][6]),.b(pp[14][7]),.cin(pp[13][8]),.sum(fsu[59]),.carry(fca[59]));
FA FA60 (.a(pp[12][9]),.b(pp[11][10]),.cin(pp[10][11]),.sum(fsu[60]),.carry(fca[60]));
FA FA61 (.a(pp[9][12]),.b(pp[8][13]),.cin(pp[7][14]),.sum(fsu[61]),.carry(fca[61]));
HA HA8 (.a(pp[15][7]),.b(pp[14][8]),.sum_h(hsu[8]),.carry_h(hca[8]));
FA FA62 (.a(pp[13][9]),.b(pp[12][10]),.cin(pp[11][11]),.sum(fsu[62]),.carry(fca[62]));
FA FA63 (.a(pp[10][12]),.b(pp[9][13]),.cin(pp[8][14]),.sum(fsu[63]),.carry(fca[63]));
FA FA64 (.a(pp[14][9]),.b(pp[13][10]),.cin(pp[12][11]),.sum(fsu[64]),.carry(fca[64]));
FA FA65 (.a(pp[11][12]),.b(pp[10][13]),.cin(pp[9][14]),.sum(fsu[65]),.carry(fca[65]));
FA FA66 (.a(pp[15][9]),.b(pp[14][10]),.cin(pp[13][11]),.sum(fsu[66]),.carry(fca[66]));
FA FA67 (.a(pp[12][12]),.b(pp[11][13]),.cin(pp[10][14]),.sum(fsu[67]),.carry(fca[67]));
HA HA9 (.a(pp[15][10]),.b(pp[14][11]),.sum_h(hsu[9]),.carry_h(hca[9]));
FA FA68 (.a(pp[13][12]),.b(pp[12][13]),.cin(pp[11][14]),.sum(fsu[68]),.carry(fca[68]));
FA FA69 (.a(pp[14][12]),.b(pp[13][13]),.cin(pp[12][14]),.sum(fsu[69]),.carry(fca[69]));
FA FA70 (.a(pp[15][12]),.b(pp[14][13]),.cin(pp[13][14]),.sum(fsu[70]),.carry(fca[70]));
HA HA10 (.a(pp[15][13]),.b(pp[14][14]),.sum_h(hsu[10]),.carry_h(hca[10]));
//2nd stage
HA HA11 (.a(fsu[1]),.b(hca[1]),.sum_h(z[2]),.carry_h(hca[11]));
FA FA71 (.a(fsu[2]),.b(fca[1]),.cin(pp[0][3]),.sum(fsu[71]),.carry(fca[71]));
FA FA72 (.a(fsu[3]),.b(fca[2]),.cin(hsu[2]),.sum(fsu[72]),.carry(fca[72]));
FA FA73 (.a(fsu[4]),.b(fca[3]),.cin(fsu[5]),.sum(fsu[73]),.carry(fca[73]));
FA FA74 (.a(fsu[6]),.b(fca[4]),.cin(fsu[7]),.sum(fsu[74]),.carry(fca[74]));
HA HA12 (.a(fca[5]),.b(pp[0][6]),.sum_h(hsu[12]),.carry_h(hca[12]));
FA FA75 (.a(fsu[8]),.b(fca[6]),.cin(fsu[9]),.sum(fsu[75]),.carry(fca[75]));
HA HA13 (.a(fca[7]),.b(hsu[3]),.sum_h(hsu[13]),.carry_h(hca[13]));
FA FA76 (.a(fsu[10]),.b(fca[8]),.cin(fsu[11]),.sum(fsu[76]),.carry(fca[76]));
FA FA77 (.a(fca[9]),.b(fsu[12]),.cin(hca[3]),.sum(fsu[77]),.carry(fca[77]));
FA FA78 (.a(fsu[13]),.b(fca[10]),.cin(fsu[14]),.sum(fsu[78]),.carry(fca[78]));
FA FA79 (.a(fca[11]),.b(fsu[15]),.cin(fca[12]),.sum(fsu[79]),.carry(fca[79]));
FA FA80 (.a(fsu[16]),.b(fca[13]),.cin(fsu[17]),.sum(fsu[80]),.carry(fca[80]));
FA FA81 (.a(fca[14]),.b(fsu[18]),.cin(fca[15]),.sum(fsu[81]),.carry(fca[81]));
FA FA82 (.a(fsu[19]),.b(fca[16]),.cin(fsu[20]),.sum(fsu[82]),.carry(fca[82]));
FA FA83 (.a(fca[17]),.b(fsu[21]),.cin(fca[18]),.sum(fsu[83]),.carry(fca[83]));
HA HA14 (.a(fsu[22]),.b(hca[4]),.sum_h(hsu[14]),.carry_h(hca[14]));
FA FA84 (.a(fsu[23]),.b(fca[19]),.cin(fsu[24]),.sum(fsu[84]),.carry(fca[84]));
FA FA85 (.a(fca[20]),.b(fsu[25]),.cin(fca[21]),.sum(fsu[85]),.carry(fca[85]));
FA FA86 (.a(fsu[26]),.b(fca[22]),.cin(pp[0][12]),.sum(fsu[86]),.carry(fca[86]));
FA FA87 (.a(fsu[27]),.b(fca[23]),.cin(fsu[28]),.sum(fsu[87]),.carry(fca[87]));
FA FA88 (.a(fca[24]),.b(fsu[29]),.cin(fca[25]),.sum(fsu[88]),.carry(fca[88]));
FA FA89 (.a(fsu[30]),.b(fca[26]),.cin(hsu[5]),.sum(fsu[89]),.carry(fca[89]));
FA FA90 (.a(fsu[31]),.b(fca[27]),.cin(fsu[32]),.sum(fsu[90]),.carry(fca[90]));
FA FA91 (.a(fca[28]),.b(fsu[33]),.cin(fca[29]),.sum(fsu[91]),.carry(fca[91]));
FA FA92 (.a(fsu[34]),.b(fca[30]),.cin(fsu[35]),.sum(fsu[92]),.carry(fca[92]));
FA FA93 (.a(fsu[36]),.b(fca[31]),.cin(fsu[37]),.sum(fsu[93]),.carry(fca[93]));
FA FA94 (.a(fca[32]),.b(fsu[38]),.cin(fca[33]),.sum(fsu[94]),.carry(fca[94]));
FA FA95 (.a(fsu[39]),.b(fca[34]),.cin(fsu[40]),.sum(fsu[95]),.carry(fca[95]));
FA FA96 (.a(hsu[6]),.b(fca[36]),.cin(fsu[41]),.sum(fsu[96]),.carry(fca[96]));
FA FA97 (.a(fca[37]),.b(fsu[42]),.cin(fca[38]),.sum(fsu[97]),.carry(fca[97]));
FA FA98 (.a(fsu[43]),.b(fca[39]),.cin(fsu[44]),.sum(fsu[98]),.carry(fca[98]));
FA FA99 (.a(pp[15][2]),.b(hca[6]),.cin(fsu[45]),.sum(fsu[99]),.carry(fca[99]));
FA FA100 (.a(fca[41]),.b(fsu[46]),.cin(fca[42]),.sum(fsu[100]),.carry(fca[100]));
FA FA101 (.a(fsu[47]),.b(fca[43]),.cin(fsu[48]),.sum(fsu[101]),.carry(fca[101]));
FA FA102 (.a(fca[45]),.b(fsu[50]),.cin(fca[46]),.sum(fsu[102]),.carry(fca[102]));
FA FA103 (.a(fsu[51]),.b(fca[47]),.cin(fsu[52]),.sum(fsu[103]),.carry(fca[103]));
FA FA104 (.a(fca[49]),.b(fsu[53]),.cin(fca[50]),.sum(fsu[104]),.carry(fca[104]));
FA FA105 (.a(fsu[54]),.b(fca[51]),.cin(fsu[55]),.sum(fsu[105]),.carry(fca[105]));
FA FA106 (.a(hca[7]),.b(fsu[56]),.cin(fca[53]),.sum(fsu[106]),.carry(fca[106]));
FA FA107 (.a(fsu[57]),.b(fca[54]),.cin(fsu[58]),.sum(fsu[107]),.carry(fca[107]));
HA HA15 (.a(fsu[59]),.b(fca[56]),.sum_h(hsu[15]),.carry_h(hca[15]));
FA FA108 (.a(fsu[60]),.b(fca[57]),.cin(fsu[61]),.sum(fsu[108]),.carry(fca[108]));
HA HA16 (.a(hsu[8]),.b(fca[59]),.sum_h(hsu[16]),.carry_h(hca[16]));
FA FA109 (.a(fsu[62]),.b(fca[60]),.cin(fsu[63]),.sum(fsu[109]),.carry(fca[109]));
HA HA17 (.a(pp[15][8]),.b(hca[8]),.sum_h(hsu[17]),.carry_h(hca[17]));
FA FA110 (.a(fsu[64]),.b(fca[62]),.cin(fsu[65]),.sum(fsu[110]),.carry(fca[110]));
FA FA111 (.a(fsu[66]),.b(fca[64]),.cin(fsu[67]),.sum(fsu[111]),.carry(fca[111]));
FA FA112 (.a(hsu[9]),.b(fca[66]),.cin(fsu[68]),.sum(fsu[112]),.carry(fca[112]));
FA FA113 (.a(pp[15][11]),.b(hca[9]),.cin(fsu[69]),.sum(fsu[113]),.carry(fca[113]));
//3rd stage
HA HA18 (.a(fsu[71]),.b(hca[11]),.sum_h(z[3]),.carry_h(hca[18]));
HA HA19 (.a(fsu[72]),.b(fca[71]),.sum_h(hsu[19]),.carry_h(hca[19]));
FA FA114 (.a(fsu[73]),.b(fca[72]),.cin(hca[2]),.sum(fsu[114]),.carry(fca[114]));
FA FA115 (.a(fsu[74]),.b(fca[73]),.cin(hsu[12]),.sum(fsu[115]),.carry(fca[115]));
FA FA116 (.a(fsu[75]),.b(fca[74]),.cin(hsu[13]),.sum(fsu[116]),.carry(fca[116]));
FA FA117 (.a(fsu[76]),.b(fca[75]),.cin(fsu[77]),.sum(fsu[117]),.carry(fca[117]));
FA FA118 (.a(fsu[78]),.b(fca[76]),.cin(fsu[79]),.sum(fsu[118]),.carry(fca[118]));
HA HA20 (.a(fca[77]),.b(pp[0][9]),.sum_h(hsu[20]),.carry_h(hca[20]));
FA FA119 (.a(fsu[80]),.b(fca[78]),.cin(fsu[81]),.sum(fsu[119]),.carry(fca[119]));
HA HA21 (.a(fca[79]),.b(hsu[4]),.sum_h(hsu[21]),.carry_h(hca[21]));
FA FA120 (.a(fsu[82]),.b(fca[80]),.cin(fsu[83]),.sum(fsu[120]),.carry(fca[120]));
HA HA22 (.a(fca[81]),.b(hsu[14]),.sum_h(hsu[22]),.carry_h(hca[22]));
FA FA121 (.a(fsu[84]),.b(fca[82]),.cin(fsu[85]),.sum(fsu[121]),.carry(fca[121]));
FA FA122 (.a(fca[83]),.b(fsu[86]),.cin(hca[14]),.sum(fsu[122]),.carry(fca[122]));
FA FA123 (.a(fsu[87]),.b(fca[84]),.cin(fsu[88]),.sum(fsu[123]),.carry(fca[123]));
FA FA124 (.a(fca[85]),.b(fsu[89]),.cin(fca[86]),.sum(fsu[124]),.carry(fca[124]));
FA FA125 (.a(fsu[90]),.b(fca[87]),.cin(fsu[91]),.sum(fsu[125]),.carry(fca[125]));
FA FA126 (.a(fca[88]),.b(fsu[92]),.cin(fca[89]),.sum(fsu[126]),.carry(fca[126]));
FA FA127 (.a(fsu[93]),.b(fca[90]),.cin(fsu[94]),.sum(fsu[127]),.carry(fca[127]));
FA FA128 (.a(fca[91]),.b(fsu[95]),.cin(fca[92]),.sum(fsu[128]),.carry(fca[128]));
FA FA129 (.a(fsu[96]),.b(fca[93]),.cin(fsu[97]),.sum(fsu[129]),.carry(fca[129]));
FA FA130 (.a(fca[94]),.b(fsu[98]),.cin(fca[95]),.sum(fsu[130]),.carry(fca[130]));
FA FA131 (.a(fsu[99]),.b(fca[96]),.cin(fsu[100]),.sum(fsu[131]),.carry(fca[131]));
FA FA132 (.a(fca[97]),.b(fsu[101]),.cin(fca[98]),.sum(fsu[132]),.carry(fca[132]));
FA FA133 (.a(fsu[49]),.b(fca[99]),.cin(fsu[102]),.sum(fsu[133]),.carry(fca[133]));
FA FA134 (.a(fca[100]),.b(fsu[103]),.cin(fca[101]),.sum(fsu[134]),.carry(fca[134]));
HA HA23 (.a(hsu[7]),.b(fsu[104]),.sum_h(hsu[23]),.carry_h(hca[23]));
FA FA135 (.a(fca[102]),.b(fsu[105]),.cin(fca[103]),.sum(fsu[135]),.carry(fca[135]));
HA HA24 (.a(pp[15][5]),.b(fsu[106]),.sum_h(hsu[24]),.carry_h(hca[24]));
FA FA136 (.a(fca[104]),.b(fsu[107]),.cin(fca[105]),.sum(fsu[136]),.carry(fca[136]));
FA FA137 (.a(fca[106]),.b(fsu[108]),.cin(fca[107]),.sum(fsu[137]),.carry(fca[137]));
FA FA138 (.a(hca[15]),.b(fsu[109]),.cin(fca[108]),.sum(fsu[138]),.carry(fca[138]));
FA FA139 (.a(hca[16]),.b(fsu[110]),.cin(fca[109]),.sum(fsu[139]),.carry(fca[139]));
FA FA140 (.a(hca[17]),.b(fsu[111]),.cin(fca[110]),.sum(fsu[140]),.carry(fca[140]));
HA HA25 (.a(fsu[112]),.b(fca[111]),.sum_h(hsu[25]),.carry_h(hca[25]));
HA HA26 (.a(fsu[113]),.b(fca[112]),.sum_h(hsu[26]),.carry_h(hca[26]));
HA HA27 (.a(fsu[70]),.b(fca[113]),.sum_h(hsu[27]),.carry_h(hca[27]));
//4th stage
HA HA28 (.a(hsu[19]),.b(hca[18]),.sum_h(z[4]),.carry_h(hca[28]));
HA HA29 (.a(fsu[114]),.b(hca[19]),.sum_h(hsu[29]),.carry_h(hca[29]));
HA HA30 (.a(fsu[115]),.b(fca[114]),.sum_h(hsu[30]),.carry_h(hca[30]));
FA FA141 (.a(fsu[116]),.b(fca[115]),.cin(hca[12]),.sum(fsu[141]),.carry(fca[141]));
FA FA142 (.a(fsu[117]),.b(fca[116]),.cin(hca[13]),.sum(fsu[142]),.carry(fca[142]));
FA FA143 (.a(fsu[118]),.b(fca[117]),.cin(hsu[20]),.sum(fsu[143]),.carry(fca[143]));
FA FA144 (.a(fsu[119]),.b(fca[118]),.cin(hsu[21]),.sum(fsu[144]),.carry(fca[144]));
FA FA145 (.a(fsu[120]),.b(fca[119]),.cin(hsu[22]),.sum(fsu[145]),.carry(fca[145]));
FA FA146 (.a(fsu[121]),.b(fca[120]),.cin(fsu[122]),.sum(fsu[146]),.carry(fca[146]));
FA FA147 (.a(fsu[123]),.b(fca[121]),.cin(fsu[124]),.sum(fsu[147]),.carry(fca[147]));
FA FA148 (.a(fsu[125]),.b(fca[123]),.cin(fsu[126]),.sum(fsu[148]),.carry(fca[148]));
HA HA31 (.a(fca[124]),.b(hca[5]),.sum_h(hsu[31]),.carry_h(hca[31]));
FA FA149 (.a(fsu[127]),.b(fca[125]),.cin(fsu[128]),.sum(fsu[149]),.carry(fca[149]));
FA FA150 (.a(fca[126]),.b(fca[35]),.cin(pp[0][15]),.sum(fsu[150]),.carry(fca[150]));
FA FA151 (.a(fsu[129]),.b(fca[127]),.cin(fsu[130]),.sum(fsu[151]),.carry(fca[151]));
FA FA152 (.a(fca[128]),.b(fca[40]),.cin(pp[1][15]),.sum(fsu[152]),.carry(fca[152]));
FA FA153 (.a(fsu[131]),.b(fca[129]),.cin(fsu[132]),.sum(fsu[153]),.carry(fca[153]));
FA FA154 (.a(fca[130]),.b(fca[44]),.cin(pp[2][15]),.sum(fsu[154]),.carry(fca[154]));
FA FA155 (.a(fsu[133]),.b(fca[131]),.cin(fsu[134]),.sum(fsu[155]),.carry(fca[155]));
FA FA156 (.a(fca[132]),.b(fca[48]),.cin(pp[3][15]),.sum(fsu[156]),.carry(fca[156]));
FA FA157 (.a(hsu[23]),.b(fca[133]),.cin(fsu[135]),.sum(fsu[157]),.carry(fca[157]));
FA FA158 (.a(fca[134]),.b(fca[52]),.cin(pp[4][15]),.sum(fsu[158]),.carry(fca[158]));
FA FA159 (.a(hsu[24]),.b(hca[23]),.cin(fsu[136]),.sum(fsu[159]),.carry(fca[159]));
FA FA160 (.a(fca[135]),.b(fca[55]),.cin(pp[5][15]),.sum(fsu[160]),.carry(fca[160]));
FA FA161 (.a(hsu[15]),.b(hca[24]),.cin(fsu[137]),.sum(fsu[161]),.carry(fca[161]));
FA FA162 (.a(fca[136]),.b(fca[58]),.cin(pp[6][15]),.sum(fsu[162]),.carry(fca[162]));
HA HA32 (.a(hsu[16]),.b(fsu[138]),.sum_h(hsu[32]),.carry_h(hca[32]));
FA FA163 (.a(fca[137]),.b(fca[61]),.cin(pp[7][15]),.sum(fsu[163]),.carry(fca[163]));
HA HA33 (.a(hsu[17]),.b(fsu[139]),.sum_h(hsu[33]),.carry_h(hca[33]));
FA FA164 (.a(fca[138]),.b(fca[63]),.cin(pp[8][15]),.sum(fsu[164]),.carry(fca[164]));
FA FA165 (.a(fca[139]),.b(fca[65]),.cin(pp[9][15]),.sum(fsu[165]),.carry(fca[165]));
FA FA166 (.a(fca[140]),.b(fca[67]),.cin(pp[10][15]),.sum(fsu[166]),.carry(fca[166]));
FA FA167 (.a(hca[25]),.b(fca[68]),.cin(pp[11][15]),.sum(fsu[167]),.carry(fca[167]));
FA FA168 (.a(hca[26]),.b(fca[69]),.cin(pp[12][15]),.sum(fsu[168]),.carry(fca[168]));
FA FA169 (.a(hca[27]),.b(fca[70]),.cin(pp[13][15]),.sum(fsu[169]),.carry(fca[169]));
FA FA170 (.a(pp[15][14]),.b(hca[10]),.cin(pp[14][15]),.sum(fsu[170]),.carry(fca[170]));
//5th stage
HA HA34 (.a(hsu[29]),.b(hca[28]),.sum_h(z[5]),.carry_h(hca[34]));
HA HA35 (.a(hsu[30]),.b(hca[29]),.sum_h(hsu[35]),.carry_h(hca[35]));
HA HA36 (.a(fsu[141]),.b(hca[30]),.sum_h(hsu[36]),.carry_h(hca[36]));
HA HA37 (.a(fsu[142]),.b(fca[141]),.sum_h(hsu[37]),.carry_h(hca[37]));
HA HA38 (.a(fsu[143]),.b(fca[142]),.sum_h(hsu[38]),.carry_h(hca[38]));
FA FA171 (.a(fsu[144]),.b(fca[143]),.cin(hca[20]),.sum(fsu[171]),.carry(fca[171]));
FA FA172 (.a(fsu[145]),.b(fca[144]),.cin(hca[21]),.sum(fsu[172]),.carry(fca[172]));
FA FA173 (.a(fsu[146]),.b(fca[145]),.cin(hca[22]),.sum(fsu[173]),.carry(fca[173]));
FA FA174 (.a(fsu[147]),.b(fca[146]),.cin(fca[122]),.sum(fsu[174]),.carry(fca[174]));
FA FA175 (.a(fsu[148]),.b(fca[147]),.cin(hsu[31]),.sum(fsu[175]),.carry(fca[175]));
FA FA176 (.a(fsu[149]),.b(fca[148]),.cin(fsu[150]),.sum(fsu[176]),.carry(fca[176]));
FA FA177 (.a(fsu[151]),.b(fca[149]),.cin(fsu[152]),.sum(fsu[177]),.carry(fca[177]));
FA FA178 (.a(fsu[153]),.b(fca[151]),.cin(fsu[154]),.sum(fsu[178]),.carry(fca[178]));
FA FA179 (.a(fsu[155]),.b(fca[153]),.cin(fsu[156]),.sum(fsu[179]),.carry(fca[179]));
FA FA180 (.a(fsu[157]),.b(fca[155]),.cin(fsu[158]),.sum(fsu[180]),.carry(fca[180]));
FA FA181 (.a(fsu[159]),.b(fca[157]),.cin(fsu[160]),.sum(fsu[181]),.carry(fca[181]));
FA FA182 (.a(fsu[161]),.b(fca[159]),.cin(fsu[162]),.sum(fsu[182]),.carry(fca[182]));
FA FA183 (.a(hsu[32]),.b(fca[161]),.cin(fsu[163]),.sum(fsu[183]),.carry(fca[183]));
FA FA184 (.a(hsu[33]),.b(hca[32]),.cin(fsu[164]),.sum(fsu[184]),.carry(fca[184]));
FA FA185 (.a(fsu[140]),.b(hca[33]),.cin(fsu[165]),.sum(fsu[185]),.carry(fca[185]));
HA HA39 (.a(hsu[25]),.b(fsu[166]),.sum_h(hsu[39]),.carry_h(hca[39]));
HA HA40 (.a(hsu[26]),.b(fsu[167]),.sum_h(hsu[40]),.carry_h(hca[40]));
HA HA41 (.a(hsu[27]),.b(fsu[168]),.sum_h(hsu[41]),.carry_h(hca[41]));
HA HA42 (.a(hsu[10]),.b(fsu[169]),.sum_h(hsu[42]),.carry_h(hca[42]));
//6th stage
HA HA43 (.a(hsu[35]),.b(hca[34]),.sum_h(z[6]),.carry_h(hca[43]));
HA HA44 (.a(hsu[36]),.b(hca[35]),.sum_h(hsu[44]),.carry_h(hca[44]));
HA HA45 (.a(hsu[37]),.b(hca[36]),.sum_h(hsu[45]),.carry_h(hca[45]));
HA HA46 (.a(hsu[38]),.b(hca[37]),.sum_h(hsu[46]),.carry_h(hca[46]));
HA HA47 (.a(fsu[171]),.b(hca[38]),.sum_h(hsu[47]),.carry_h(hca[47]));
HA HA48 (.a(fsu[172]),.b(fca[171]),.sum_h(hsu[48]),.carry_h(hca[48]));
HA HA49 (.a(fsu[173]),.b(fca[172]),.sum_h(hsu[49]),.carry_h(hca[49]));
HA HA50 (.a(fsu[174]),.b(fca[173]),.sum_h(hsu[50]),.carry_h(hca[50]));
HA HA51 (.a(fsu[175]),.b(fca[174]),.sum_h(hsu[51]),.carry_h(hca[51]));
FA FA186 (.a(fsu[176]),.b(fca[175]),.cin(hca[31]),.sum(fsu[186]),.carry(fca[186]));
FA FA187 (.a(fsu[177]),.b(fca[176]),.cin(fca[150]),.sum(fsu[187]),.carry(fca[187]));
FA FA188 (.a(fsu[178]),.b(fca[177]),.cin(fca[152]),.sum(fsu[188]),.carry(fca[188]));
FA FA189 (.a(fsu[179]),.b(fca[178]),.cin(fca[154]),.sum(fsu[189]),.carry(fca[189]));
FA FA190 (.a(fsu[180]),.b(fca[179]),.cin(fca[156]),.sum(fsu[190]),.carry(fca[190]));
FA FA191 (.a(fsu[181]),.b(fca[180]),.cin(fca[158]),.sum(fsu[191]),.carry(fca[191]));
FA FA192 (.a(fsu[182]),.b(fca[181]),.cin(fca[160]),.sum(fsu[192]),.carry(fca[192]));
FA FA193 (.a(fsu[183]),.b(fca[182]),.cin(fca[162]),.sum(fsu[193]),.carry(fca[193]));
FA FA194 (.a(fsu[184]),.b(fca[183]),.cin(fca[163]),.sum(fsu[194]),.carry(fca[194]));
FA FA195 (.a(fsu[185]),.b(fca[184]),.cin(fca[164]),.sum(fsu[195]),.carry(fca[195]));
FA FA196 (.a(hsu[39]),.b(fca[185]),.cin(fca[165]),.sum(fsu[196]),.carry(fca[196]));
FA FA197 (.a(hsu[40]),.b(hca[39]),.cin(fca[166]),.sum(fsu[197]),.carry(fca[197]));
FA FA198 (.a(hsu[41]),.b(hca[40]),.cin(fca[167]),.sum(fsu[198]),.carry(fca[198]));
FA FA199 (.a(hsu[42]),.b(hca[41]),.cin(fca[168]),.sum(fsu[199]),.carry(fca[199]));
FA FA200 (.a(fsu[170]),.b(hca[42]),.cin(fca[169]),.sum(fsu[200]),.carry(fca[200]));
HA HA52 (.a(pp[15][15]),.b(fca[170]),.sum_h(hsu[52]),.carry_h(hca[52]));
//last stage
HA HA53 (.a(hsu[44]),.b(hca[43]),.sum_h(z[7]),.carry_h(hca[53]));
FA FA201 (.a(hca[53]),.b(hsu[45]),.cin(hca[44]),.sum(z[8]),.carry(fca[201]));
FA FA202 (.a(fca[201]),.b(hsu[46]),.cin(hca[45]),.sum(z[9]),.carry(fca[202]));
FA FA203 (.a(fca[202]),.b(hsu[47]),.cin(hca[46]),.sum(z[10]),.carry(fca[203]));
FA FA204 (.a(fca[203]),.b(hsu[48]),.cin(hca[47]),.sum(z[11]),.carry(fca[204]));
FA FA205 (.a(fca[204]),.b(hsu[49]),.cin(hca[48]),.sum(z[12]),.carry(fca[205]));
FA FA206 (.a(fca[205]),.b(hsu[50]),.cin(hca[49]),.sum(z[13]),.carry(fca[206]));
FA FA207 (.a(fca[206]),.b(hsu[51]),.cin(hca[50]),.sum(z[14]),.carry(fca[207]));
FA FA208 (.a(fca[207]),.b(fsu[186]),.cin(hca[51]),.sum(z[15]),.carry(fca[208]));
FA FA209 (.a(fca[208]),.b(fsu[187]),.cin(fca[186]),.sum(z[16]),.carry(fca[209]));
FA FA210 (.a(fca[209]),.b(fsu[188]),.cin(fca[187]),.sum(z[17]),.carry(fca[210]));
FA FA211 (.a(fca[210]),.b(fsu[189]),.cin(fca[188]),.sum(z[18]),.carry(fca[211]));
FA FA212 (.a(fca[211]),.b(fsu[190]),.cin(fca[189]),.sum(z[19]),.carry(fca[212]));
FA FA213 (.a(fca[212]),.b(fsu[191]),.cin(fca[190]),.sum(z[20]),.carry(fca[213]));
FA FA214 (.a(fca[213]),.b(fsu[192]),.cin(fca[191]),.sum(z[21]),.carry(fca[214]));
FA FA215 (.a(fca[214]),.b(fsu[193]),.cin(fca[192]),.sum(z[22]),.carry(fca[215]));
FA FA216 (.a(fca[215]),.b(fsu[194]),.cin(fca[193]),.sum(z[23]),.carry(fca[216]));
FA FA217 (.a(fca[216]),.b(fsu[195]),.cin(fca[194]),.sum(z[24]),.carry(fca[217]));
FA FA218 (.a(fca[217]),.b(fsu[196]),.cin(fca[195]),.sum(z[25]),.carry(fca[218]));
FA FA219 (.a(fca[218]),.b(fsu[197]),.cin(fca[196]),.sum(z[26]),.carry(fca[219]));
FA FA220 (.a(fca[219]),.b(fsu[198]),.cin(fca[197]),.sum(z[27]),.carry(fca[220]));
FA FA221 (.a(fca[220]),.b(fsu[199]),.cin(fca[198]),.sum(z[28]),.carry(fca[221]));
FA FA222 (.a(fca[221]),.b(fsu[200]),.cin(fca[199]),.sum(z[29]),.carry(fca[222]));
FA FA223 (.a(fca[222]),.b(hsu[52]),.cin(fca[200]),.sum(z[30]),.carry(fca[223]));
HA HA54 (.a(fca[223]),.b(hca[52]),.sum_h(z[31]),.carry_h(z[32]));
endmodule
