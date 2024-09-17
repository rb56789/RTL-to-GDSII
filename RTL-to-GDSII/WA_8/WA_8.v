`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: PhD
// Engineer: ANURAJ V
// 
// Create Date: 02/27/2024 03:08:57 PM
// Design Name: 
// Module Name: WA_8
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

module WA_8(x,y,z);
input [7:0] x,y;
output [16:0] z;

wire [62:0] p;
wire [54:0] hca;
wire [41:0] hsu;
wire [54:0] fca;
wire [41:0] fsu;

    reg[7:0] pp[7:0];
    integer i, j;

    always @(x, y) begin
        for(i = 0;i < 8;i = i+1)
            for(j = 0;j < 8;j = j+1)
                pp[i][j] = x[i] & y[j];
    end

assign z[0] = pp[0][0];
///first stage
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
HA HA3 (.a(pp[7][1]),.b(pp[6][2]),.sum_h(hsu[3]),.carry_h(hca[3]));
FA FA10 (.a(pp[5][3]),.b(pp[4][4]),.cin(pp[3][5]),.sum(fsu[10]),.carry(fca[10]));
FA FA11 (.a(pp[6][3]),.b(pp[5][4]),.cin(pp[4][5]),.sum(fsu[11]),.carry(fca[11]));
FA FA12 (.a(pp[7][3]),.b(pp[6][4]),.cin(pp[5][5]),.sum(fsu[12]),.carry(fca[12]));
HA HA4 (.a(pp[7][4]),.b(pp[6][5]),.sum_h(hsu[4]),.carry_h(hca[4]));
///2nd stage
HA HA5 (.a(fsu[1]),.b(hca[1]),.sum_h(z[2]),.carry_h(hca[5]));//p2
FA FA13 (.a(fsu[2]),.b(fca[1]),.cin(pp[0][3]),.sum(fsu[13]),.carry(fca[13]));
FA FA14 (.a(fsu[3]),.b(fca[2]),.cin(hsu[2]),.sum(fsu[14]),.carry(fca[14]));
FA FA15 (.a(fsu[4]),.b(fca[3]),.cin(fsu[5]),.sum(fsu[15]),.carry(fca[15]));
FA FA16 (.a(fsu[6]),.b(fca[4]),.cin(fsu[7]),.sum(fsu[16]),.carry(fca[16]));
HA HA6 (.a(fca[5]),.b(pp[0][6]),.sum_h(hsu[6]),.carry_h(hca[6]));
FA FA17 (.a(fsu[8]),.b(fca[6]),.cin(fsu[9]),.sum(fsu[17]),.carry(fca[17]));
FA FA18 (.a(fca[7]),.b(pp[1][6]),.cin(pp[0][7]),.sum(fsu[18]),.carry(fca[18]));
FA FA19 (.a(hsu[3]),.b(fca[8]),.cin(fsu[10]),.sum(fsu[19]),.carry(fca[19]));
FA FA20 (.a(fca[9]),.b(pp[2][6]),.cin(pp[1][7]),.sum(fsu[20]),.carry(fca[20]));
FA FA21 (.a(pp[7][2]),.b(hca[3]),.cin(fsu[11]),.sum(fsu[21]),.carry(fca[21]));
FA FA22 (.a(fca[10]),.b(pp[3][6]),.cin(pp[2][7]),.sum(fsu[22]),.carry(fca[22]));
FA FA23 (.a(fca[11]),.b(pp[4][6]),.cin(pp[3][7]),.sum(fsu[23]),.carry(fca[23]));
FA FA24 (.a(fca[12]),.b(pp[5][6]),.cin(pp[4][7]),.sum(fsu[24]),.carry(fca[24]));
FA FA25 (.a(hca[4]),.b(pp[6][6]),.cin(pp[5][7]),.sum(fsu[25]),.carry(fca[25]));
HA HA7 (.a(pp[7][6]),.b(pp[6][7]),.sum_h(hsu[7]),.carry_h(hca[7]));
//3rd stage
HA HA8 (.a(fsu[13]),.b(hca[5]),.sum_h(z[3]),.carry_h(hca[8]));//p3
HA HA9 (.a(fsu[14]),.b(fca[13]),.sum_h(hsu[9]),.carry_h(hca[9]));
FA FA26 (.a(fsu[15]),.b(fca[14]),.cin(hca[2]),.sum(fsu[26]),.carry(fca[26]));
FA FA27 (.a(fsu[16]),.b(fca[15]),.cin(hsu[6]),.sum(fsu[27]),.carry(fca[27]));
FA FA28 (.a(fsu[17]),.b(fca[16]),.cin(fsu[18]),.sum(fsu[28]),.carry(fca[28]));
FA FA29 (.a(fsu[19]),.b(fca[17]),.cin(fsu[20]),.sum(fsu[29]),.carry(fca[29]));
FA FA30 (.a(fsu[21]),.b(fca[19]),.cin(fsu[22]),.sum(fsu[30]),.carry(fca[30]));
FA FA31 (.a(fsu[12]),.b(fca[21]),.cin(fsu[23]),.sum(fsu[31]),.carry(fca[31]));
HA HA10 (.a(hsu[4]),.b(fsu[24]),.sum_h(hsu[10]),.carry_h(hca[10]));
HA HA11 (.a(pp[7][5]),.b(fsu[25]),.sum_h(hsu[11]),.carry_h(hca[11]));
//4th stage
HA HA12 (.a(hsu[9]),.b(hca[8]),.sum_h(z[4]),.carry_h(hca[12]));//p4
HA HA13 (.a(fsu[26]),.b(hca[9]),.sum_h(hsu[13]),.carry_h(hca[13]));
HA HA14 (.a(fsu[27]),.b(fca[26]),.sum_h(hsu[14]),.carry_h(hca[14]));
FA FA32 (.a(fsu[28]),.b(fca[27]),.cin(hca[6]),.sum(fsu[32]),.carry(fca[32]));
FA FA33 (.a(fsu[29]),.b(fca[28]),.cin(fca[18]),.sum(fsu[33]),.carry(fca[33]));
FA FA34 (.a(fsu[30]),.b(fca[29]),.cin(fca[20]),.sum(fsu[34]),.carry(fca[34]));
FA FA35 (.a(fsu[31]),.b(fca[30]),.cin(fca[22]),.sum(fsu[35]),.carry(fca[35]));
FA FA36 (.a(hsu[10]),.b(fca[31]),.cin(fca[23]),.sum(fsu[36]),.carry(fca[36]));
FA FA37 (.a(hsu[11]),.b(hca[10]),.cin(fca[24]),.sum(fsu[37]),.carry(fca[37]));
FA FA38 (.a(hsu[7]),.b(hca[11]),.cin(fca[25]),.sum(fsu[38]),.carry(fca[38]));
HA HA15 (.a(pp[7][7]),.b(hca[7]),.sum_h(hsu[15]),.carry_h(hca[15]));
//final addition
HA HA16 (.a(hsu[13]),.b(hca[12]),.sum_h(z[5]),.carry_h(hca[16]));//p5
FA FA39 (.a(hsu[14]),.b(hca[13]),.cin(hca[16]),.sum(z[6]),.carry(fca[39]));//p6
FA FA40 (.a(fsu[32]),.b(hca[14]),.cin(fca[39]),.sum(z[7]),.carry(fca[40]));//p7
FA FA41 (.a(fsu[33]),.b(fca[32]),.cin(fca[40]),.sum(z[8]),.carry(fca[41]));//p8
FA FA42 (.a(fsu[34]),.b(fca[33]),.cin(fca[41]),.sum(z[9]),.carry(fca[42]));//p9
FA FA43 (.a(fsu[35]),.b(fca[34]),.cin(fca[42]),.sum(z[10]),.carry(fca[43]));//p10
FA FA44 (.a(fsu[36]),.b(fca[35]),.cin(fca[43]),.sum(z[11]),.carry(fca[44]));//p11
FA FA45 (.a(fsu[37]),.b(fca[36]),.cin(fca[44]),.sum(z[12]),.carry(fca[45]));//p12
FA FA46 (.a(fsu[38]),.b(fca[37]),.cin(fca[45]),.sum(z[13]),.carry(fca[46]));//p13
FA FA47 (.a(hsu[15]),.b(fca[38]),.cin(fca[46]),.sum(z[14]),.carry(fca[47]));//p14
HA HA17 (.a(hca[15]),.b(fca[47]),.sum_h(z[15]),.carry_h(z[16]));//p15,p16

endmodule
