`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2024 10:35:44
// Design Name: 
// Module Name: KSA64
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


module ksa64(
output carryout,
output [63:0]sum,
input [63:0]a,
input [63:0]b,
input cin
    );

wire [63:0] p,g,cp,cg,ccg,ccp,cccg,cccp,ccccg,ccccp,cccccg,cccccp,ccccccg,ccccccp,c;

assign p=a^b;
assign g=a&b;

assign cg[0]=(g[0]);
assign cp[0]=(p[0]);

assign cg[1]=(p[1]&g[0])|g[1];
assign cp[1]=(p[1]&p[0]);

assign cg[2]=(p[2]&g[1])|g[2];
assign cp[2]=(p[2]&p[1]);

assign cg[3]=(p[3]&g[2])|g[3];
assign cp[3]=(p[3]&p[2]);

assign cg[4]=(p[4]&g[3])|g[4];
assign cp[4]=(p[4]&p[3]);

assign cg[5]=(p[5]&g[4])|g[5];
assign cp[5]=(p[5]&p[4]);

assign cg[6]=(p[6]&g[5])|g[6];
assign cp[6]=(p[6]&p[5]);

assign cg[7]=(p[7]&g[6])|g[7];
assign cp[7]=(p[7]&p[6]);

assign cg[8]=(p[8]&g[7])|g[8];
assign cp[8]=(p[8]&p[7]);

assign cg[9]=(p[9]&g[8])|g[9];
assign cp[9]=(p[9]&p[8]);

assign cg[10]=(p[10]&g[9])|g[10];
assign cp[10]=(p[10]&p[9]);

assign cg[11]=(p[11]&g[10])|g[11];
assign cp[11]=(p[11]&p[10]);

assign cg[12]=(p[12]&g[11])|g[12];
assign cp[12]=(p[12]&p[11]);

assign cg[13]=(p[13]&g[12])|g[13];
assign cp[13]=(p[13]&p[12]);

assign cg[14]=(p[14]&g[13])|g[14];
assign cp[14]=(p[14]&p[13]);

assign cg[15]=(p[15]&g[14])|g[15];
assign cp[15]=(p[15]&p[14]);

assign cg[16]=(p[16]&g[15])|g[16];
assign cp[16]=(p[16]&p[15]);

assign cg[17]=(p[17]&g[16])|g[17];
assign cp[17]=(p[17]&p[16]);

assign cg[18]=(p[18]&g[17])|g[18];
assign cp[18]=(p[18]&p[17]);

assign cg[19]=(p[19]&g[18])|g[19];
assign cp[19]=(p[19]&p[18]);

assign cg[20]=(p[20]&g[19])|g[20];
assign cp[20]=(p[20]&p[19]);

assign cg[21]=(p[21]&g[20])|g[21];
assign cp[21]=(p[21]&p[20]);

assign cg[22]=(p[22]&g[21])|g[22];
assign cp[22]=(p[22]&p[21]);

assign cg[23]=(p[23]&g[22])|g[23];
assign cp[23]=(p[23]&p[22]);

assign cg[24]=(p[24]&g[23])|g[24];
assign cp[24]=(p[24]&p[23]);

assign cg[25]=(p[25]&g[24])|g[25];
assign cp[25]=(p[25]&p[24]);

assign cg[26]=(p[26]&g[25])|g[26];
assign cp[26]=(p[26]&p[25]);

assign cg[27]=(p[27]&g[26])|g[27];
assign cp[27]=(p[27]&p[26]);

assign cg[28]=(p[28]&g[27])|g[28];
assign cp[28]=(p[28]&p[27]);

assign cg[29]=(p[29]&g[28])|g[29];
assign cp[29]=(p[29]&p[28]);

assign cg[30]=(p[30]&g[29])|g[30];
assign cp[30]=(p[30]&p[29]);

assign cg[31]=(p[31]&g[30])|g[31];
assign cp[31]=(p[31]&p[30]);

assign cg[32]=(p[32]&g[31])|g[32];
assign cp[32]=(p[32]&p[31]);

assign cg[33]=(p[33]&g[32])|g[33];
assign cp[33]=(p[33]&p[32]);

assign cg[34]=(p[34]&g[33])|g[34];
assign cp[34]=(p[34]&p[33]);

assign cg[35]=(p[35]&g[34])|g[35];
assign cp[35]=(p[35]&p[34]);

assign cg[36]=(p[36]&g[35])|g[36];
assign cp[36]=(p[36]&p[35]);

assign cg[37]=(p[37]&g[36])|g[37];
assign cp[37]=(p[37]&p[36]);

assign cg[38]=(p[38]&g[37])|g[38];
assign cp[38]=(p[38]&p[37]);

assign cg[39]=(p[39]&g[38])|g[39];
assign cp[39]=(p[39]&p[38]);

assign cg[40]=(p[40]&g[39])|g[40];
assign cp[40]=(p[40]&p[39]);

assign cg[41]=(p[41]&g[40])|g[41];
assign cp[41]=(p[41]&p[40]);

assign cg[42]=(p[42]&g[41])|g[42];
assign cp[42]=(p[42]&p[41]);

assign cg[43]=(p[43]&g[42])|g[43];
assign cp[43]=(p[43]&p[42]);

assign cg[44]=(p[44]&g[43])|g[44];
assign cp[44]=(p[44]&p[43]);

assign cg[45]=(p[45]&g[44])|g[45];
assign cp[45]=(p[45]&p[44]);

assign cg[46]=(p[46]&g[45])|g[46];
assign cp[46]=(p[46]&p[45]);

assign cg[47]=(p[47]&g[46])|g[47];
assign cp[47]=(p[47]&p[46]);

assign cg[48]=(p[48]&g[47])|g[48];
assign cp[48]=(p[48]&p[47]);

assign cg[49]=(p[49]&g[48])|g[49];
assign cp[49]=(p[49]&p[48]);

assign cg[50]=(p[50]&g[49])|g[50];
assign cp[50]=(p[50]&p[49]);

assign cg[51]=(p[51]&g[50])|g[51];
assign cp[51]=(p[51]&p[50]);

assign cg[52]=(p[52]&g[51])|g[52];
assign cp[52]=(p[52]&p[51]);

assign cg[53]=(p[53]&g[52])|g[53];
assign cp[53]=(p[53]&p[52]);

assign cg[54]=(p[54]&g[53])|g[54];
assign cp[54]=(p[54]&p[53]);

assign cg[55]=(p[55]&g[54])|g[55];
assign cp[55]=(p[55]&p[54]);

assign cg[56]=(p[56]&g[55])|g[56];
assign cp[56]=(p[56]&p[55]);

assign cg[57]=(p[57]&g[56])|g[57];
assign cp[57]=(p[57]&p[56]);

assign cg[58]=(p[58]&g[57])|g[58];
assign cp[58]=(p[58]&p[57]);

assign cg[59]=(p[59]&g[58])|g[59];
assign cp[59]=(p[59]&p[58]);

assign cg[60]=(p[60]&g[59])|g[60];
assign cp[60]=(p[60]&p[59]);

assign cg[61]=(p[61]&g[60])|g[61];
assign cp[61]=(p[61]&p[60]);

assign cg[62]=(p[62]&g[61])|g[62];
assign cp[62]=(p[62]&p[61]);

assign cg[63]=(p[63]&g[62])|g[63];
assign cp[63]=(p[63]&p[62]);





assign ccg[0]=cg[0];
assign ccp[0]=cp[0];

assign ccg[1]=cg[1];
assign ccp[1]=cp[1];

assign ccg[2]=(cp[2]&cg[0])|cg[2];
assign ccp[2]=(cp[2]&cp[0]);

assign ccg[3]=(cp[3]&cg[1])|cg[3];
assign ccp[3]=(cp[3]&cp[1]);

assign ccg[4]=(cp[4]&cg[2])|cg[4];
assign ccp[4]=(cp[4]&cp[2]);

assign ccg[5]=(cp[5]&cg[3])|cg[5];
assign ccp[5]=(cp[5]&cp[3]);

assign ccg[6]=(cp[6]&cg[4])|cg[6];
assign ccp[6]=(cp[6]&cp[4]);

assign ccg[7]=(cp[7]&cg[5])|cg[7];
assign ccp[7]=(cp[7]&cp[5]);

assign ccg[8]=(cp[8]&cg[6])|cg[8];
assign ccp[8]=(cp[8]&cp[6]);

assign ccg[9]=(cp[9]&cg[7])|cg[9];
assign ccp[9]=(cp[9]&cp[7]);

assign ccg[10]=(cp[10]&cg[8])|cg[10];
assign ccp[10]=(cp[10]&cp[8]);

assign ccg[11]=(cp[11]&cg[9])|cg[11];
assign ccp[11]=(cp[11]&cp[9]);

assign ccg[12]=(cp[12]&cg[10])|cg[12];
assign ccp[12]=(cp[12]&cp[10]);

assign ccg[13]=(cp[13]&cg[11])|cg[13];
assign ccp[13]=(cp[13]&cp[11]);

assign ccg[14]=(cp[14]&cg[12])|cg[14];
assign ccp[14]=(cp[14]&cp[12]);

assign ccg[15]=(cp[15]&cg[13])|cg[15];
assign ccp[15]=(cp[15]&cp[13]);

assign ccg[16]=(cp[16]&cg[14])|cg[16];
assign ccp[16]=(cp[16]&cp[14]);

assign ccg[17]=(cp[17]&cg[15])|cg[17];
assign ccp[17]=(cp[17]&cp[15]);

assign ccg[18]=(cp[18]&cg[16])|cg[18];
assign ccp[18]=(cp[18]&cp[16]);

assign ccg[19]=(cp[19]&cg[17])|cg[19];
assign ccp[19]=(cp[19]&cp[17]);

assign ccg[20]=(cp[20]&cg[18])|cg[20];
assign ccp[20]=(cp[20]&cp[18]);

assign ccg[21]=(cp[21]&cg[19])|cg[21];
assign ccp[21]=(cp[21]&cp[19]);

assign ccg[22]=(cp[22]&cg[20])|cg[22];
assign ccp[22]=(cp[22]&cp[20]);

assign ccg[23]=(cp[23]&cg[21])|cg[23];
assign ccp[23]=(cp[23]&cp[21]);

assign ccg[24]=(cp[24]&cg[22])|cg[24];
assign ccp[24]=(cp[24]&cp[22]);

assign ccg[25]=(cp[25]&cg[23])|cg[25];
assign ccp[25]=(cp[25]&cp[23]);

assign ccg[26]=(cp[26]&cg[24])|cg[26];
assign ccp[26]=(cp[26]&cp[24]);

assign ccg[27]=(cp[27]&cg[25])|cg[27];
assign ccp[27]=(cp[27]&cp[25]);

assign ccg[28]=(cp[28]&cg[26])|cg[28];
assign ccp[28]=(cp[28]&cp[26]);

assign ccg[29]=(cp[29]&cg[27])|cg[29];
assign ccp[29]=(cp[29]&cp[27]);

assign ccg[30]=(cp[30]&cg[28])|cg[30];
assign ccp[30]=(cp[30]&cp[28]);

assign ccg[31]=(cp[31]&cg[29])|cg[31];
assign ccp[31]=(cp[31]&cp[29]);

assign ccg[32]=(cp[32]&cg[30])|cg[32];
assign ccp[32]=(cp[32]&cp[30]);

assign ccg[33]=(cp[33]&cg[31])|cg[33];
assign ccp[33]=(cp[33]&cp[31]);

assign ccg[34]=(cp[34]&cg[32])|cg[34];
assign ccp[34]=(cp[34]&cp[32]);

assign ccg[35]=(cp[35]&cg[33])|cg[35];
assign ccp[35]=(cp[35]&cp[33]);

assign ccg[36]=(cp[36]&cg[34])|cg[36];
assign ccp[36]=(cp[36]&cp[34]);

assign ccg[37]=(cp[37]&cg[35])|cg[37];
assign ccp[37]=(cp[37]&cp[35]);

assign ccg[38]=(cp[38]&cg[36])|cg[38];
assign ccp[38]=(cp[38]&cp[36]);

assign ccg[39]=(cp[39]&cg[37])|cg[39];
assign ccp[39]=(cp[39]&cp[37]);

assign ccg[40]=(cp[40]&cg[38])|cg[40];
assign ccp[40]=(cp[40]&cp[38]);

assign ccg[41]=(cp[41]&cg[39])|cg[41];
assign ccp[41]=(cp[41]&cp[39]);

assign ccg[42]=(cp[42]&cg[40])|cg[42];
assign ccp[42]=(cp[42]&cp[40]);

assign ccg[43]=(cp[43]&cg[41])|cg[43];
assign ccp[43]=(cp[43]&cp[41]);

assign ccg[44]=(cp[44]&cg[42])|cg[44];
assign ccp[44]=(cp[44]&cp[42]);

assign ccg[45]=(cp[45]&cg[43])|cg[45];
assign ccp[45]=(cp[45]&cp[43]);

assign ccg[46]=(cp[46]&cg[44])|cg[46];
assign ccp[46]=(cp[46]&cp[44]);

assign ccg[47]=(cp[47]&cg[45])|cg[47];
assign ccp[47]=(cp[47]&cp[45]);

assign ccg[48]=(cp[48]&cg[46])|cg[48];
assign ccp[48]=(cp[48]&cp[46]);

assign ccg[49]=(cp[49]&cg[47])|cg[49];
assign ccp[49]=(cp[49]&cp[47]);

assign ccg[50]=(cp[50]&cg[48])|cg[50];
assign ccp[50]=(cp[50]&cp[48]);

assign ccg[51]=(cp[51]&cg[49])|cg[51];
assign ccp[51]=(cp[51]&cp[49]);

assign ccg[52]=(cp[52]&cg[50])|cg[52];
assign ccp[52]=(cp[52]&cp[50]);

assign ccg[53]=(cp[53]&cg[51])|cg[53];
assign ccp[53]=(cp[53]&cp[51]);

assign ccg[54]=(cp[54]&cg[52])|cg[54];
assign ccp[54]=(cp[54]&cp[52]);

assign ccg[55]=(cp[55]&cg[53])|cg[55];
assign ccp[55]=(cp[55]&cp[53]);

assign ccg[56]=(cp[56]&cg[54])|cg[56];
assign ccp[56]=(cp[56]&cp[54]);

assign ccg[57]=(cp[57]&cg[55])|cg[57];
assign ccp[57]=(cp[57]&cp[55]);

assign ccg[58]=(cp[58]&cg[56])|cg[58];
assign ccp[58]=(cp[58]&cp[56]);

assign ccg[59]=(cp[59]&cg[57])|cg[59];
assign ccp[59]=(cp[59]&cp[57]);

assign ccg[60]=(cp[60]&cg[58])|cg[60];
assign ccp[60]=(cp[60]&cp[58]);

assign ccg[61]=(cp[61]&cg[59])|cg[61];
assign ccp[61]=(cp[61]&cp[59]);

assign ccg[62]=(cp[62]&cg[60])|cg[62];
assign ccp[62]=(cp[62]&cp[60]);

assign ccg[63]=(cp[63]&cg[61])|cg[63];
assign ccp[63]=(cp[63]&cp[61]);





assign cccg[0]=ccg[0];
assign cccp[0]=ccp[0];

assign cccg[1]=ccg[1];
assign cccp[1]=ccp[1];

assign cccg[2]=ccg[2];
assign cccp[2]=ccp[2];

assign cccg[3]=ccg[3];
assign cccp[3]=ccp[3];

assign cccg[4]=(ccp[4]&ccg[0])|ccg[4];
assign cccp[4]=(ccp[4]&ccp[0]);

assign cccg[5]=(ccp[5]&ccg[1])|ccg[5];
assign cccp[5]=(ccp[5]&ccp[1]);

assign cccg[6]=(ccp[6]&ccg[2])|ccg[6];
assign cccp[6]=(ccp[6]&ccp[2]);

assign cccg[7]=(ccp[7]&ccg[3])|ccg[7];
assign cccp[7]=(ccp[7]&ccp[3]);

assign cccg[8]=(ccp[8]&ccg[4])|ccg[8];
assign cccp[8]=(ccp[8]&ccp[4]);

assign cccg[9]=(ccp[9]&ccg[5])|ccg[9];
assign cccp[9]=(ccp[9]&ccp[5]);

assign cccg[10]=(ccp[10]&ccg[6])|ccg[10];
assign cccp[10]=(ccp[10]&ccp[6]);

assign cccg[11]=(ccp[11]&ccg[7])|ccg[11];
assign cccp[11]=(ccp[11]&ccp[7]);

assign cccg[12]=(ccp[12]&ccg[8])|ccg[12];
assign cccp[12]=(ccp[12]&ccp[8]);

assign cccg[13]=(ccp[13]&ccg[9])|ccg[13];
assign cccp[13]=(ccp[13]&ccp[9]);

assign cccg[14]=(ccp[14]&ccg[10])|ccg[14];
assign cccp[14]=(ccp[14]&ccp[10]);

assign cccg[15]=(ccp[15]&ccg[11])|ccg[15];
assign cccp[15]=(ccp[15]&ccp[11]);

assign cccg[16]=(ccp[16]&ccg[12])|ccg[16];
assign cccp[16]=(ccp[16]&ccp[12]);
 
assign cccg[17]=(ccp[17]&ccg[13])|ccg[17];
assign cccp[17]=(ccp[17]&ccp[13]);
 
assign cccg[18]=(ccp[18]&ccg[14])|ccg[18];
assign cccp[18]=(ccp[18]&ccp[14]);
 
assign cccg[19]=(ccp[19]&ccg[15])|ccg[19];
assign cccp[19]=(ccp[19]&ccp[15]);
 
assign cccg[20]=(ccp[20]&ccg[16])|ccg[20];
assign cccp[20]=(ccp[20]&ccp[16]);
 
assign cccg[21]=(ccp[21]&ccg[17])|ccg[21];
assign cccp[21]=(ccp[21]&ccp[17]);

assign cccg[22]=(ccp[22]&ccg[18])|ccg[22];
assign cccp[22]=(ccp[22]&ccp[18]);

assign cccg[23]=(ccp[23]&ccg[19])|ccg[23];
assign cccp[23]=(ccp[23]&ccp[19]);

assign cccg[24]=(ccp[24]&ccg[20])|ccg[24];
assign cccp[24]=(ccp[24]&ccp[20]);

assign cccg[25]=(ccp[25]&ccg[21])|ccg[25];
assign cccp[25]=(ccp[25]&ccp[21]);

assign cccg[26]=(ccp[26]&ccg[22])|ccg[26];
assign cccp[26]=(ccp[26]&ccp[22]);

assign cccg[27]=(ccp[27]&ccg[23])|ccg[27];
assign cccp[27]=(ccp[27]&ccp[23]);

assign cccg[28]=(ccp[28]&ccg[24])|ccg[28];
assign cccp[28]=(ccp[28]&ccp[24]);

assign cccg[29]=(ccp[29]&ccg[25])|ccg[29];
assign cccp[29]=(ccp[29]&ccp[25]);

assign cccg[30]=(ccp[30]&ccg[26])|ccg[30];
assign cccp[30]=(ccp[30]&ccp[26]);

assign cccg[31]=(ccp[31]&ccg[27])|ccg[31];
assign cccp[31]=(ccp[31]&ccp[27]);

assign cccg[32]=(ccp[32]&ccg[28])|ccg[32];
assign cccp[32]=(ccp[32]&ccp[28]);

assign cccg[33]=(ccp[33]&ccg[29])|ccg[33];
assign cccp[33]=(ccp[33]&ccp[29]);

assign cccg[34]=(ccp[34]&ccg[30])|ccg[34];
assign cccp[34]=(ccp[34]&ccp[30]);

assign cccg[35]=(ccp[35]&ccg[31])|ccg[35];
assign cccp[35]=(ccp[35]&ccp[31]);

assign cccg[36]=(ccp[36]&ccg[32])|ccg[36];
assign cccp[36]=(ccp[36]&ccp[33]);

assign cccg[37]=(ccp[37]&ccg[33])|ccg[37];
assign cccp[37]=(ccp[37]&ccp[33]);

assign cccg[38]=(ccp[38]&ccg[34])|ccg[38];
assign cccp[38]=(ccp[38]&ccp[34]);

assign cccg[39]=(ccp[39]&ccg[35])|ccg[39];
assign cccp[39]=(ccp[39]&ccp[35]);

assign cccg[40]=(ccp[40]&ccg[36])|ccg[40];
assign cccp[40]=(ccp[40]&ccp[36]);

assign cccg[41]=(ccp[41]&ccg[37])|ccg[41];
assign cccp[41]=(ccp[41]&ccp[37]);

assign cccg[42]=(ccp[42]&ccg[38])|ccg[42];
assign cccp[42]=(ccp[42]&ccp[38]);

assign cccg[43]=(ccp[43]&ccg[39])|ccg[43];
assign cccp[43]=(ccp[43]&ccp[39]);

assign cccg[44]=(ccp[44]&ccg[40])|ccg[44];
assign cccp[44]=(ccp[44]&ccp[40]);

assign cccg[45]=(ccp[45]&ccg[41])|ccg[45];
assign cccp[45]=(ccp[45]&ccp[41]);

assign cccg[46]=(ccp[46]&ccg[42])|ccg[46];
assign cccp[46]=(ccp[46]&ccp[42]);

assign cccg[47]=(ccp[47]&ccg[43])|ccg[47];
assign cccp[47]=(ccp[47]&ccp[43]);

assign cccg[48]=(ccp[48]&ccg[44])|ccg[48];
assign cccp[48]=(ccp[48]&ccp[44]);

assign cccg[49]=(ccp[49]&ccg[45])|ccg[49];
assign cccp[49]=(ccp[49]&ccp[45]);

assign cccg[50]=(ccp[50]&ccg[46])|ccg[50];
assign cccp[50]=(ccp[50]&ccp[46]);

assign cccg[51]=(ccp[51]&ccg[47])|ccg[51];
assign cccp[51]=(ccp[51]&ccp[47]);

assign cccg[52]=(ccp[52]&ccg[48])|ccg[52];
assign cccp[52]=(ccp[52]&ccp[48]);

assign cccg[53]=(ccp[53]&ccg[49])|ccg[53];
assign cccp[53]=(ccp[53]&ccp[49]);

assign cccg[54]=(ccp[54]&ccg[50])|ccg[54];
assign cccp[54]=(ccp[54]&ccp[50]);

assign cccg[55]=(ccp[55]&ccg[51])|ccg[55];
assign cccp[55]=(ccp[55]&ccp[51]);

assign cccg[56]=(ccp[56]&ccg[52])|ccg[56];
assign cccp[56]=(ccp[56]&ccp[52]);

assign cccg[57]=(ccp[57]&ccg[53])|ccg[57];
assign cccp[57]=(ccp[57]&ccp[53]);

assign cccg[58]=(ccp[58]&ccg[54])|ccg[58];
assign cccp[58]=(ccp[58]&ccp[54]);

assign cccg[59]=(ccp[59]&ccg[55])|ccg[59];
assign cccp[59]=(ccp[59]&ccp[55]);

assign cccg[60]=(ccp[60]&ccg[56])|ccg[60];
assign cccp[60]=(ccp[60]&ccp[56]);

assign cccg[61]=(ccp[61]&ccg[57])|ccg[61];
assign cccp[61]=(ccp[61]&ccp[57]);

assign cccg[62]=(ccp[62]&ccg[58])|ccg[62];
assign cccp[62]=(ccp[62]&ccp[58]);

assign cccg[63]=(ccp[63]&ccg[59])|ccg[63];
assign cccp[63]=(ccp[63]&ccp[59]);



assign ccccg[0]=cccg[0];
assign ccccp[0]=cccp[0];

assign ccccg[1]=cccg[1];
assign ccccp[1]=cccp[1];

assign ccccg[2]=cccg[2];
assign ccccp[2]=cccp[2];

assign ccccg[3]=cccg[3];
assign ccccp[3]=cccp[3];

assign ccccg[4]=cccg[4];
assign ccccp[4]=cccp[4];

assign ccccg[5]=cccg[5];
assign ccccp[5]=cccp[5];

assign ccccg[6]=cccg[6];
assign ccccp[6]=cccp[6];

assign ccccg[7]=cccg[7];
assign ccccp[7]=cccp[7];

assign ccccg[8]=(cccp[8]&cccg[0])|cccg[8];
assign ccccp[8]=(cccp[8]&cccp[0]);

assign ccccg[9]=(cccp[9]&cccg[1])|cccg[9];
assign ccccp[9]=(cccp[9]&cccp[1]);

assign ccccg[10]=(cccp[10]&cccg[2])|cccg[10];
assign ccccp[10]=(cccp[10]&cccp[2]);

assign ccccg[11]=(cccp[11]&cccg[3])|cccg[11];
assign ccccp[11]=(cccp[11]&cccp[3]);

assign ccccg[12]=(cccp[12]&cccg[4])|cccg[12];
assign ccccp[12]=(cccp[12]&cccp[4]);

assign ccccg[13]=(cccp[13]&cccg[5])|cccg[13];
assign ccccp[13]=(cccp[13]&cccp[5]);

assign ccccg[14]=(cccp[14]&cccg[6])|cccg[14];
assign ccccp[14]=(cccp[14]&cccp[6]);

assign ccccg[15]=(cccp[15]&cccg[7])|cccg[15];
assign ccccp[15]=(cccp[15]&cccp[7]);

assign ccccg[16]=(cccp[16]&cccg[8])|cccg[16];
assign ccccp[16]=(cccp[16]&cccp[8]);

assign ccccg[17]=(cccp[17]&cccg[9])|cccg[17];
assign ccccp[17]=(cccp[17]&cccp[9]);

assign ccccg[18]=(cccp[18]&cccg[10])|cccg[18];
assign ccccp[18]=(cccp[18]&cccp[10]);

assign ccccg[19]=(cccp[19]&cccg[11])|cccg[19];
assign ccccp[19]=(cccp[19]&cccp[11]);

assign ccccg[20]=(cccp[20]&cccg[12])|cccg[20];
assign ccccp[20]=(cccp[20]&cccp[12]);

assign ccccg[21]=(cccp[21]&cccg[13])|cccg[21];
assign ccccp[21]=(cccp[21]&cccp[13]);

assign ccccg[22]=(cccp[22]&cccg[14])|cccg[22];
assign ccccp[22]=(cccp[22]&cccp[14]);

assign ccccg[23]=(cccp[23]&cccg[15])|cccg[23];
assign ccccp[23]=(cccp[23]&cccp[15]);

assign ccccg[24]=(cccp[24]&cccg[16])|cccg[24];
assign ccccp[24]=(cccp[24]&cccp[16]);

assign ccccg[25]=(cccp[25]&cccg[17])|cccg[25];
assign ccccp[25]=(cccp[25]&cccp[17]);

assign ccccg[26]=(cccp[26]&cccg[18])|cccg[26];
assign ccccp[26]=(cccp[26]&cccp[18]);

assign ccccg[27]=(cccp[27]&cccg[19])|cccg[27];
assign ccccp[27]=(cccp[27]&cccp[19]);

assign ccccg[28]=(cccp[28]&cccg[20])|cccg[28];
assign ccccp[28]=(cccp[28]&cccp[20]);

assign ccccg[29]=(cccp[29]&cccg[21])|cccg[29];
assign ccccp[29]=(cccp[29]&cccp[21]);

assign ccccg[30]=(cccp[30]&cccg[22])|cccg[30];
assign ccccp[30]=(cccp[30]&cccp[22]);

assign ccccg[31]=(cccp[31]&cccg[23])|cccg[31];
assign ccccp[31]=(cccp[31]&cccp[23]);

assign ccccg[32]=(cccp[32]&cccg[24])|cccg[32];
assign ccccp[32]=(cccp[32]&cccp[24]);

assign ccccg[33]=(cccp[33]&cccg[25])|cccg[33];
assign ccccp[33]=(cccp[33]&cccp[25]);

assign ccccg[34]=(cccp[34]&cccg[26])|cccg[34];
assign ccccp[34]=(cccp[34]&cccp[26]);

assign ccccg[35]=(cccp[35]&cccg[27])|cccg[35];
assign ccccp[35]=(cccp[35]&cccp[27]);

assign ccccg[36]=(cccp[36]&cccg[28])|cccg[36];
assign ccccp[36]=(cccp[36]&cccp[28]);

assign ccccg[37]=(cccp[37]&cccg[29])|cccg[37];
assign ccccp[37]=(cccp[37]&cccp[29]);

assign ccccg[38]=(cccp[38]&cccg[30])|cccg[38];
assign ccccp[38]=(cccp[38]&cccp[30]);

assign ccccg[39]=(cccp[39]&cccg[31])|cccg[39];
assign ccccp[39]=(cccp[39]&cccp[31]);

assign ccccg[40]=(cccp[40]&cccg[32])|cccg[40];
assign ccccp[40]=(cccp[40]&cccp[32]);

assign ccccg[41]=(cccp[41]&cccg[33])|cccg[41];
assign ccccp[41]=(cccp[41]&cccp[33]);

assign ccccg[42]=(cccp[42]&cccg[34])|cccg[42];
assign ccccp[42]=(cccp[42]&cccp[34]);

assign ccccg[43]=(cccp[43]&cccg[35])|cccg[43];
assign ccccp[43]=(cccp[43]&cccp[35]);

assign ccccg[44]=(cccp[44]&cccg[36])|cccg[44];
assign ccccp[44]=(cccp[44]&cccp[36]);

assign ccccg[45]=(cccp[45]&cccg[37])|cccg[45];
assign ccccp[45]=(cccp[45]&cccp[37]);

assign ccccg[46]=(cccp[46]&cccg[38])|cccg[46];
assign ccccp[46]=(cccp[46]&cccp[38]);

assign ccccg[47]=(cccp[47]&cccg[39])|cccg[47];
assign ccccp[47]=(cccp[47]&cccp[39]);

assign ccccg[48]=(cccp[48]&cccg[40])|cccg[48];
assign ccccp[48]=(cccp[48]&cccp[40]);

assign ccccg[49]=(cccp[49]&cccg[41])|cccg[49];
assign ccccp[49]=(cccp[49]&cccp[41]);

assign ccccg[50]=(cccp[50]&cccg[42])|cccg[50];
assign ccccp[50]=(cccp[50]&cccp[42]);

assign ccccg[51]=(cccp[51]&cccg[43])|cccg[51];
assign ccccp[51]=(cccp[51]&cccp[43]);

assign ccccg[52]=(cccp[52]&cccg[44])|cccg[52];
assign ccccp[52]=(cccp[52]&cccp[44]);

assign ccccg[53]=(cccp[53]&cccg[45])|cccg[53];
assign ccccp[53]=(cccp[53]&cccp[45]);

assign ccccg[54]=(cccp[54]&cccg[46])|cccg[54];
assign ccccp[54]=(cccp[54]&cccp[46]);

assign ccccg[55]=(cccp[55]&cccg[47])|cccg[55];
assign ccccp[55]=(cccp[55]&cccp[47]);

assign ccccg[56]=(cccp[56]&cccg[48])|cccg[56];
assign ccccp[56]=(cccp[56]&cccp[48]);

assign ccccg[57]=(cccp[57]&cccg[49])|cccg[57];
assign ccccp[57]=(cccp[57]&cccp[49]);

assign ccccg[58]=(cccp[58]&cccg[50])|cccg[58];
assign ccccp[58]=(cccp[58]&cccp[50]);

assign ccccg[59]=(cccp[59]&cccg[51])|cccg[59];
assign ccccp[59]=(cccp[59]&cccp[51]);

assign ccccg[60]=(cccp[60]&cccg[52])|cccg[60];
assign ccccp[60]=(cccp[60]&cccp[52]);

assign ccccg[61]=(cccp[61]&cccg[53])|cccg[61];
assign ccccp[61]=(cccp[61]&cccp[53]);

assign ccccg[62]=(cccp[62]&cccg[54])|cccg[62];
assign ccccp[62]=(cccp[62]&cccp[54]);

assign ccccg[63]=(cccp[63]&cccg[55])|cccg[63];
assign ccccp[63]=(cccp[63]&cccp[55]);






assign cccccg[0]=ccccg[0];
assign cccccp[0]=ccccp[0];

assign cccccg[1]=ccccg[1];
assign cccccp[1]=ccccp[1];

assign cccccg[2]=ccccg[2];
assign cccccp[2]=ccccp[2];

assign cccccg[3]=ccccg[3];
assign cccccp[3]=ccccp[3];

assign cccccg[4]=ccccg[4];
assign cccccp[4]=ccccp[4];

assign cccccg[5]=ccccg[5];
assign cccccp[5]=ccccp[5];

assign cccccg[6]=ccccg[6];
assign cccccp[6]=ccccp[6];

assign cccccg[7]=ccccg[7];
assign cccccp[7]=ccccp[7];

assign cccccg[8]=ccccg[8];
assign cccccp[8]=ccccp[8];

assign cccccg[9]=ccccg[9];
assign cccccp[9]=ccccp[9];

assign cccccg[10]=ccccg[10];
assign cccccp[10]=ccccp[10];

assign cccccg[11]=ccccg[11];
assign cccccp[11]=ccccp[11];

assign cccccg[12]=ccccg[12];
assign cccccp[12]=ccccp[12];

assign cccccg[13]=ccccg[13];
assign cccccp[13]=ccccp[13];

assign cccccg[14]=ccccg[14];
assign cccccp[14]=ccccp[14];

assign cccccg[15]=ccccg[15];
assign cccccp[15]=ccccp[15];

assign cccccg[16]=(ccccp[16]&ccccg[0])|ccccg[16];
assign cccccp[16]=(ccccp[16]&ccccp[0]);

assign cccccg[17]=(ccccp[17]&ccccg[1])|ccccg[17];
assign cccccp[17]=(ccccp[17]&ccccp[1]);

assign cccccg[18]=(ccccp[18]&ccccg[2])|ccccg[18];
assign cccccp[18]=(ccccp[18]&ccccp[2]);

assign cccccg[19]=(ccccp[19]&ccccg[3])|ccccg[19];
assign cccccp[19]=(ccccp[19]&ccccp[3]);

assign cccccg[20]=(ccccp[20]&ccccg[4])|ccccg[20];
assign cccccp[20]=(ccccp[20]&ccccp[4]);

assign cccccg[21]=(ccccp[21]&ccccg[5])|ccccg[21];
assign cccccp[21]=(ccccp[21]&ccccp[5]);

assign cccccg[22]=(ccccp[22]&ccccg[6])|ccccg[22];
assign cccccp[22]=(ccccp[22]&ccccp[6]);

assign cccccg[23]=(ccccp[23]&ccccg[7])|ccccg[23];
assign cccccp[23]=(ccccp[23]&ccccp[7]);

assign cccccg[24]=(ccccp[24]&ccccg[8])|ccccg[24];
assign cccccp[24]=(ccccp[24]&ccccp[8]);

assign cccccg[25]=(ccccp[25]&ccccg[9])|ccccg[25];
assign cccccp[25]=(ccccp[25]&ccccp[9]);

assign cccccg[26]=(ccccp[26]&ccccg[10])|ccccg[26];
assign cccccp[26]=(ccccp[26]&ccccp[10]);

assign cccccg[27]=(ccccp[27]&ccccg[11])|ccccg[27];
assign cccccp[27]=(ccccp[27]&ccccp[11]);

assign cccccg[28]=(ccccp[28]&ccccg[12])|ccccg[28];
assign cccccp[28]=(ccccp[28]&ccccp[12]);

assign cccccg[29]=(ccccp[29]&ccccg[13])|ccccg[29];
assign cccccp[29]=(ccccp[29]&ccccp[13]);

assign cccccg[30]=(ccccp[30]&ccccg[14])|ccccg[30];
assign cccccp[30]=(ccccp[30]&ccccp[14]);

assign cccccg[31]=(ccccp[31]&ccccg[15])|ccccg[31];
assign cccccp[31]=(ccccp[31]&ccccp[15]);

assign cccccg[32] = (ccccp[32] & ccccg[16]) | ccccg[32];
assign cccccp[32] = (ccccp[32] & ccccp[16]);

assign cccccg[33] = (ccccp[33] & ccccg[17]) | ccccg[33];
assign cccccp[33] = (ccccp[33] & ccccp[17]);

assign cccccg[34] = (ccccp[34] & ccccg[18]) | ccccg[34];
assign cccccp[34] = (ccccp[34] & ccccp[18]);

assign cccccg[35] = (ccccp[35] & ccccg[19]) | ccccg[35];
assign cccccp[35] = (ccccp[35] & ccccp[19]);

assign cccccg[36] = (ccccp[36] & ccccg[20]) | ccccg[36];
assign cccccp[36] = (ccccp[36] & ccccp[20]);

assign cccccg[37] = (ccccp[37] & ccccg[21]) | ccccg[37];
assign cccccp[37] = (ccccp[37] & ccccp[21]);

assign cccccg[38] = (ccccp[38] & ccccg[22]) | ccccg[38];
assign cccccp[38] = (ccccp[38] & ccccp[22]);

assign cccccg[39] = (ccccp[39] & ccccg[23]) | ccccg[39];
assign cccccp[39] = (ccccp[39] & ccccp[23]);

assign cccccg[40] = (ccccp[40] & ccccg[24]) | ccccg[40];
assign cccccp[40] = (ccccp[40] & ccccp[24]);

assign cccccg[41] = (ccccp[41] & ccccg[25]) | ccccg[41];
assign cccccp[41] = (ccccp[41] & ccccp[25]);

assign cccccg[42] = (ccccp[42] & ccccg[26]) | ccccg[42];
assign cccccp[42] = (ccccp[42] & ccccp[26]);

assign cccccg[43] = (ccccp[43] & ccccg[27]) | ccccg[43];
assign cccccp[43] = (ccccp[43] & ccccp[27]);

assign cccccg[44] = (ccccp[44] & ccccg[28]) | ccccg[44];
assign cccccp[44] = (ccccp[44] & ccccp[28]);

assign cccccg[45] = (ccccp[45] & ccccg[29]) | ccccg[45];
assign cccccp[45] = (ccccp[45] & ccccp[29]);

assign cccccg[46] = (ccccp[46] & ccccg[30]) | ccccg[46];
assign cccccp[46] = (ccccp[46] & ccccp[30]);

assign cccccg[47] = (ccccp[47] & ccccg[31]) | ccccg[47];
assign cccccp[47] = (ccccp[47] & ccccp[31]);

assign cccccg[48] = (ccccp[48] & ccccg[32]) | ccccg[48];
assign cccccp[48] = (ccccp[48] & ccccp[32]);

assign cccccg[49] = (ccccp[49] & ccccg[33]) | ccccg[49];
assign cccccp[49] = (ccccp[49] & ccccp[33]);

assign cccccg[50] = (ccccp[50] & ccccg[34]) | ccccg[50];
assign cccccp[50] = (ccccp[50] & ccccp[34]);

assign cccccg[51] = (ccccp[51] & ccccg[35]) | ccccg[51];
assign cccccp[51] = (ccccp[51] & ccccp[35]);

assign cccccg[52] = (ccccp[52] & ccccg[36]) | ccccg[52];
assign cccccp[52] = (ccccp[52] & ccccp[36]);

assign cccccg[53] = (ccccp[53] & ccccg[37]) | ccccg[53];
assign cccccp[53] = (ccccp[53] & ccccp[37]);

assign cccccg[54] = (ccccp[54] & ccccg[38]) | ccccg[54];
assign cccccp[54] = (ccccp[54] & ccccp[38]);

assign cccccg[55] = (ccccp[55] & ccccg[39]) | ccccg[55];
assign cccccp[55] = (ccccp[55] & ccccp[39]);

assign cccccg[56] = (ccccp[56] & ccccg[40]) | ccccg[56];
assign cccccp[56] = (ccccp[56] & ccccp[40]);

assign cccccg[57] = (ccccp[57] & ccccg[41]) | ccccg[57];
assign cccccp[57] = (ccccp[57] & ccccp[41]);

assign cccccg[58] = (ccccp[58] & ccccg[42]) | ccccg[58];
assign cccccp[58] = (ccccp[58] & ccccp[42]);

assign cccccg[59] = (ccccp[59] & ccccg[43]) | ccccg[59];
assign cccccp[59] = (ccccp[59] & ccccp[43]);

assign cccccg[60] = (ccccp[60] & ccccg[44]) | ccccg[60];
assign cccccp[60] = (ccccp[60] & ccccp[44]);

assign cccccg[61] = (ccccp[61] & ccccg[45]) | ccccg[61];
assign cccccp[61] = (ccccp[61] & ccccp[45]);

assign cccccg[62] = (ccccp[62] & ccccg[46]) | ccccg[62];
assign cccccp[62] = (ccccp[62] & ccccp[46]);

assign cccccg[63] = (ccccp[63] & ccccg[47]) | ccccg[63];
assign cccccp[63] = (ccccp[63] & ccccp[47]);



assign ccccccg[0]=cccccg[0];
assign ccccccp[0]=cccccp[0];

assign ccccccg[1]=cccccg[1];
assign ccccccp[1]=cccccp[1];

assign ccccccg[2]=cccccg[2];
assign ccccccp[2]=cccccp[2];

assign ccccccg[3]=cccccg[3];
assign ccccccp[3]=cccccp[3];

assign ccccccg[4]=cccccg[4];
assign ccccccp[4]=cccccp[4];

assign ccccccg[5]=cccccg[5];
assign ccccccp[5]=cccccp[5];

assign ccccccg[6]=cccccg[6];
assign ccccccp[6]=cccccp[6];

assign ccccccg[7]=cccccg[7];
assign ccccccp[7]=cccccp[7];

assign ccccccg[8]=cccccg[8];
assign ccccccp[8]=cccccp[8];

assign ccccccg[9]=cccccg[9];
assign ccccccp[9]=cccccp[9];

assign ccccccg[10]=cccccg[10];
assign ccccccp[10]=cccccp[10];

assign ccccccg[11]=cccccg[11];
assign ccccccp[11]=cccccp[11];

assign ccccccg[12]=cccccg[12];
assign ccccccp[12]=cccccp[12];

assign ccccccg[13]=cccccg[13];
assign ccccccp[13]=cccccp[13];

assign ccccccg[14]=cccccg[14];
assign ccccccp[14]=cccccp[14];

assign ccccccg[15]=cccccg[15];
assign ccccccp[15]=cccccp[15];

assign ccccccg[16] = cccccg[16];
assign ccccccp[16] = cccccp[16];

assign ccccccg[17] = cccccg[17];
assign ccccccp[17] = cccccp[17];

assign ccccccg[18] = cccccg[18];
assign ccccccp[18] = cccccp[18];

assign ccccccg[19] = cccccg[19];
assign ccccccp[19] = cccccp[19];

assign ccccccg[20] = cccccg[20];
assign ccccccp[20] = cccccp[20];

assign ccccccg[21] = cccccg[21];
assign ccccccp[21] = cccccp[21];

assign ccccccg[22] = cccccg[22];
assign ccccccp[22] = cccccp[22];

assign ccccccg[23] = cccccg[23];
assign ccccccp[23] = cccccp[23];

assign ccccccg[24] = cccccg[24];
assign ccccccp[24] = cccccp[24];

assign ccccccg[25] = cccccg[25];
assign ccccccp[25] = cccccp[25];

assign ccccccg[26] = cccccg[26];
assign ccccccp[26] = cccccp[26];

assign ccccccg[27] = cccccg[27];
assign ccccccp[27] = cccccp[27];

assign ccccccg[28] = cccccg[28];
assign ccccccp[28] = cccccp[28];

assign ccccccg[29] = cccccg[29];
assign ccccccp[29] = cccccp[29];

assign ccccccg[30] = cccccg[30];
assign ccccccp[30] = cccccp[30];

assign ccccccg[31] = cccccg[31];
assign ccccccp[31] = cccccp[31];

assign ccccccg[32] = (cccccp[32] & cccccg[0]) | cccccg[32];
assign ccccccp[32] = (cccccp[32] & cccccp[0]);

assign ccccccg[33] = (cccccp[33] & cccccg[1]) | cccccg[33];
assign ccccccp[33] = (cccccp[33] & cccccp[1]);

assign ccccccg[34] = (cccccp[34] & cccccg[2]) | cccccg[34];
assign ccccccp[34] = (cccccp[34] & cccccp[2]);

assign ccccccg[35] = (cccccp[35] & cccccg[3]) | cccccg[35];
assign ccccccp[35] = (cccccp[35] & cccccp[3]);

assign ccccccg[36] = (cccccp[36] & cccccg[4]) | cccccg[36];
assign ccccccp[36] = (cccccp[36] & cccccp[4]);

assign ccccccg[37] = (cccccp[37] & cccccg[5]) | cccccg[37];
assign ccccccp[37] = (cccccp[37] & cccccp[5]);

assign ccccccg[38] = (cccccp[38] & cccccg[6]) | cccccg[38];
assign ccccccp[38] = (cccccp[38] & cccccp[6]);

assign ccccccg[39] = (cccccp[39] & cccccg[7]) | cccccg[39];
assign ccccccp[39] = (cccccp[39] & cccccp[7]);

assign ccccccg[40] = (cccccp[40] & cccccg[8]) | cccccg[40];
assign ccccccp[40] = (cccccp[40] & cccccp[8]);

assign ccccccg[41] = (cccccp[41] & cccccg[9]) | cccccg[41];
assign ccccccp[41] = (cccccp[41] & cccccp[9]);

assign ccccccg[42] = (cccccp[42] & cccccg[10]) | cccccg[42];
assign ccccccp[42] = (cccccp[42] & cccccp[10]);

assign ccccccg[43] = (cccccp[43] & cccccg[11]) | cccccg[43];
assign ccccccp[43] = (cccccp[43] & cccccp[11]);

assign ccccccg[44] = (cccccp[44] & cccccg[12]) | cccccg[44];
assign ccccccp[44] = (cccccp[44] & cccccp[12]);

assign ccccccg[45] = (cccccp[45] & cccccg[13]) | cccccg[45];
assign ccccccp[45] = (cccccp[45] & cccccp[13]);

assign ccccccg[46] = (cccccp[46] & cccccg[14]) | cccccg[46];
assign ccccccp[46] = (cccccp[46] & cccccp[14]);

assign ccccccg[47] = (cccccp[47] & cccccg[15]) | cccccg[47];
assign ccccccp[47] = (cccccp[47] & cccccp[15]);

assign ccccccg[48] = (cccccp[48] & cccccg[16]) | cccccg[48];
assign ccccccp[48] = (cccccp[48] & cccccp[16]);

assign ccccccg[49] = (cccccp[49] & cccccg[17]) | cccccg[49];
assign ccccccp[49] = (cccccp[49] & cccccp[17]);

assign ccccccg[50] = (cccccp[50] & cccccg[18]) | cccccg[50];
assign ccccccp[50] = (cccccp[50] & cccccp[18]);

assign ccccccg[51] = (cccccp[51] & cccccg[19]) | cccccg[51];
assign ccccccp[51] = (cccccp[51] & cccccp[19]);

assign ccccccg[52] = (cccccp[52] & cccccg[20]) | cccccg[52];
assign ccccccp[52] = (cccccp[52] & cccccp[20]);

assign ccccccg[53] = (cccccp[53] & cccccg[21]) | cccccg[53];
assign ccccccp[53] = (cccccp[53] & cccccp[21]);

assign ccccccg[54] = (cccccp[54] & cccccg[22]) | cccccg[54];
assign ccccccp[54] = (cccccp[54] & cccccp[22]);

assign ccccccg[55] = (cccccp[55] & cccccg[23]) | cccccg[55];
assign ccccccp[55] = (cccccp[55] & cccccp[23]);

assign ccccccg[56] = (cccccp[56] & cccccg[24]) | cccccg[56];
assign ccccccp[56] = (cccccp[56] & cccccp[24]);

assign ccccccg[57] = (cccccp[57] & cccccg[25]) | cccccg[57];
assign ccccccp[57] = (cccccp[57] & cccccp[25]);

assign ccccccg[58] = (cccccp[58] & cccccg[26]) | cccccg[58];
assign ccccccp[58] = (cccccp[58] & cccccp[26]);

assign ccccccg[59] = (cccccp[59] & cccccg[27]) | cccccg[59];
assign ccccccp[59] = (cccccp[59] & cccccp[27]);

assign ccccccg[60] = (cccccp[60] & cccccg[28]) | cccccg[60];
assign ccccccp[60] = (cccccp[60] & cccccp[28]);

assign ccccccg[61] = (cccccp[61] & cccccg[29]) | cccccg[61];
assign ccccccp[61] = (cccccp[61] & cccccp[29]);

assign ccccccg[62] = (cccccp[62] & cccccg[30]) | cccccg[62];
assign ccccccp[62] = (cccccp[62] & cccccp[30]);

assign ccccccg[63] = (cccccp[63] & cccccg[31]) | cccccg[63];
assign ccccccp[63] = (cccccp[63] & cccccp[31]);



assign c=ccccccg;
assign sum[0]=p[0]^cin;
assign sum[1]=p[1]^c[0];
assign sum[2]=p[2]^c[1];
assign sum[3]=p[3]^c[2];
assign sum[4]=p[4]^c[3];
assign sum[5]=p[5]^c[4];
assign sum[6]=p[6]^c[5];
assign sum[7]=p[7]^c[6];
assign sum[8]=p[8]^c[7];
assign sum[9]=p[9]^c[8];
assign sum[10]=p[10]^c[9];
assign sum[11]=p[11]^c[10];
assign sum[12]=p[12]^c[11];
assign sum[13]=p[13]^c[12];
assign sum[14]=p[14]^c[13];
assign sum[15]=p[15]^c[14];
assign sum[16]=p[16]^c[15];
assign sum[17]=p[17]^c[16];
assign sum[18]=p[18]^c[17];
assign sum[19]=p[19]^c[18];
assign sum[20]=p[20]^c[19];
assign sum[21]=p[21]^c[20];
assign sum[22]=p[22]^c[21];
assign sum[23]=p[23]^c[22];
assign sum[24]=p[24]^c[23];
assign sum[25]=p[25]^c[24];
assign sum[26]=p[26]^c[25];
assign sum[27]=p[27]^c[26];
assign sum[28]=p[28]^c[27];
assign sum[29]=p[29]^c[28];
assign sum[30]=p[30]^c[29];
assign sum[31]=p[31]^c[30];
assign sum[32] = p[32] ^ c[31];
assign sum[33] = p[33] ^ c[32];
assign sum[34] = p[34] ^ c[33];
assign sum[35] = p[35] ^ c[34];
assign sum[36] = p[36] ^ c[35];
assign sum[37] = p[37] ^ c[36];
assign sum[38] = p[38] ^ c[37];
assign sum[39] = p[39] ^ c[38];
assign sum[40] = p[40] ^ c[39];
assign sum[41] = p[41] ^ c[40];
assign sum[42] = p[42] ^ c[41];
assign sum[43] = p[43] ^ c[42];
assign sum[44] = p[44] ^ c[43];
assign sum[45] = p[45] ^ c[44];
assign sum[46] = p[46] ^ c[45];
assign sum[47] = p[47] ^ c[46];
assign sum[48] = p[48] ^ c[47];
assign sum[49] = p[49] ^ c[48];
assign sum[50] = p[50] ^ c[49];
assign sum[51] = p[51] ^ c[50];
assign sum[52] = p[52] ^ c[51];
assign sum[53] = p[53] ^ c[52];
assign sum[54] = p[54] ^ c[53];
assign sum[55] = p[55] ^ c[54];
assign sum[56] = p[56] ^ c[55];
assign sum[57] = p[57] ^ c[56];
assign sum[58] = p[58] ^ c[57];
assign sum[59] = p[59] ^ c[58];
assign sum[60] = p[60] ^ c[59];
assign sum[61] = p[61] ^ c[60];
assign sum[62] = p[62] ^ c[61];
assign sum[63] = p[63] ^ c[62];
assign carryout=c[63];


endmodule
