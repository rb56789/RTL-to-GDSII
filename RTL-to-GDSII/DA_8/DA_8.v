`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2024 09:35:22 AM
// Design Name: 
// Module Name: DA_8
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



module com3_2 (
    input a,b,c,cin,
    output sum,cout,carry
);

wire [6:0] y;

xor o1(y[0],a,b);
xor o2(y[1],c,y[0]);
xor o3(sum,cin,y[1]);


and a1(y[2],a,b);
and a2(y[3],c,y[0]);
or a3(cout,y[2],y[3]);

and a4(carry,y[1],cin);
    
endmodule

module full_adder (
    input a,b,c,
    output sum,carry
);

wire [2:0] y;

xor o1(y[0],a,b);
xor o2(sum,y[0],c);

and a1(y[1],a,b);
and a2(y[2],c,y[0]);

or o3(carry,y[1],y[2]);
    
endmodule

module half_adder (
    input a,b,
    output sum,carry
);

xor o1(sum,a,b);

and a1(carry,a,b);
    
endmodule

module com4_2 (
    input a,b,c,d,cin,
    output sum,cout,carry
);

wire [7:0] y;

xor o1(y[0],a,b);
xor o2(y[1],c,y[0]);
xor o3(y[2],d,y[1]);
xor o4(sum,cin,y[2]);

and a1(y[3],a,b);
and a2(y[4],c,y[0]);
or a3(cout,y[3],y[4]);

and a4(y[5],y[1],d);
and a5(y[6],y[2],cin);

or a6(carry,y[5],y[6]);

endmodule

module DA_8(
    input [7:0] a,b,
    output [15:0] z
);

wire [200:0] s,co,c;

wire [0:15] p[0:15];

genvar g,k;

generate
    for (g = 0; g<8; g=g+1) begin
        for (k = 0; k<8; k=k+1) begin
            and a1(p[g][k],a[k],b[g]);
        end
    end
endgenerate

//code writing 
half_adder h0(p[0][4],p[1][3],s[0],co[0]);


com4_2 a1(p[0][5] ,p[1][4] ,p[2][3] ,p[3][2] ,co[0]        ,s[1],co[1],c[0]);


com4_2 a2(p[0][6] ,p[1][5] ,p[2][4],p[3][3],co[1],           s[2],co[2],c[1]);
half_adder h2(p[4][2],p[5][1],                               s[3],co[3]);


com4_2 a3(p[0][7],p[1][6],p[2][5],p[3][4],co[2],             s[4],co[4],c[2]);
com4_2 a4(p[4][3],p[5][2],p[6][1],p[7][0],co[3],              s[5],co[5],c[3]);

com4_2 a5(p[1][7],p[2][6],p[3][5],p[4][4],co[4],               s[6],co[6],c[4]);
com3_2 a6(p[5][3],p[6][2],p[7][1],co[5],                       s[7],co[7],c[5]);

com4_2 a7(p[2][7],p[3][6],p[4][5],p[5][4],co[6],                s[8],co[8],c[6]);
full_adder f1(p[6][3],p[7][2],co[7],                            s[9],c[7]);

com4_2 a8(p[3][7],p[4][6],p[5][5],p[6][4],co[8],                s[10],co[9],c[8]);


full_adder f2(p[4][7],p[5][6],co[9],                           s[11],c[9]);


// stage 2:

half_adder h1(p[0][2],p[1][1],                                   s[12],co[10]);
com4_2 a9(p[0][3],p[1][2],p[2][1],p[3][0],co[10],                s[13],co[11],c[10]);
com4_2 a10(p[2][2],p[3][1],p[4][0],s[0],co[11],                   s[14],co[12],c[11]);
com3_2 a11(p[4][1],p[5][0],s[1],         co[12],                  s[15],co[13],c[12]);
com4_2 a12(p[6][0],s[2],s[3],c[0],        co[13],                 s[16],co[14],c[13]);
com3_2 a13(s[4],s[5],c[1],                co[14],                 s[17],co[15],c[14]);
com4_2 a14(s[6],s[7],c[2],c[3],            co[15],                s[18],co[16],c[15]);
com4_2 a15(s[8],s[9],c[4],c[5],             co[16],               s[19],co[17],c[16]);
com4_2 a16(s[10],c[6],c[7],p[7][3],          co[17],               s[20],co[18],c[17]);
com4_2 a17(s[11],c[8],p[7][4],p[6][5],        co[18],              s[21],co[19],c[18]);
com4_2 a18(p[7][5],p[6][6],p[5][7],c[9],       co[19],             s[22],co[20],c[19]);
full_adder f3(p[7][6],p[6][7],                 co[20],             s[23],c[20]);

// stage 3:
assign z[0]=p[0][0];
half_adder h6(p[0][1],p[1][0],                    z[1],co[21]);
full_adder f4(s[12], p[2][0],co[21],              z[2],co[22]);
half_adder h7(s[13],co[22],                       z[3],co[23]);
full_adder f5(s[14],c[10],co[23],                  z[4],co[24]);
full_adder f6(s[15],c[11],co[24],                   z[5],co[25]);
full_adder f7(s[16],c[12],co[25], z[6],co[26]);
full_adder f8(s[17],c[13],co[26],z[7],co[27]);
full_adder f9(s[18],c[14],co[27],z[8],co[28]);
full_adder f10(s[19],c[15],co[28],z[9],co[29]);
full_adder f11(s[20],c[16],co[29],z[10],co[30]);
full_adder f12(s[21],c[17],co[30],z[11],co[31]);
full_adder f13(s[22],c[18],co[31],z[12],co[32]);
full_adder f14(s[23],c[19],co[32],z[13],co[33]);
full_adder f15(p[7][7],c[20],co[33],z[14],z[15]);








endmodule
