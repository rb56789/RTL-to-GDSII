
`define n1 16
module half_adder (
    sum, carry,
    a, b
);


    output sum, carry;


    input a, b;


    xor(sum, a, b);
    and(carry, a, b);
    
endmodule



module full_adder (
    sum, carry_out,
    a, b, c_in
);
    


    output sum, carry_out;

    input a, b, c_in;

    wire w1, w2, w3;


    
    xor(sum, a, b, c_in);

    and(w1, a, b);
    and(w2, a, c_in);
    and(w3, b, c_in);

    or(carry_out, w1, w2, w3);

endmodule


module AR_16 (
    k,
    a, b
);

    
    output [2*`n1-1:0] k;

    input [`n1-1:0] a, b;
    

    wire [2*`n1-1:0] p[`n1-1:0];

    


    genvar i,j;

    generate
        for (i = 0; i < `n1; i = i + 1) begin
            for (j = 0; j < 2*`n1; j = j + 1) begin
                
                 if(j<`n1) begin
                    initial #0 $display("a[%d] = %b :: b[%d] = %b ",i, a[i], j, b[j]  );
                    and(p[i][i+j], a[i], b[j]);
                    initial #0 $display("p[%d][%d] = %b \n", i,i+ j, p[i][i+j]);
            end
               
            end
        end
    endgenerate




    wire [2*`n1-1:0] c[`n1-1:0], sum[`n1-1:0];
    

    assign k[0] = p[0][0];
    initial #0 $display("k[%d] = %b \n", 0, k[0]);

    generate
        for (j = 1; j < `n1; j = j + 1) begin

            for (i =1 ; i<`n1 ;i = i + 1 ) begin
                
                if (j==i) begin
                    if (j==1) begin
                        half_adder h1 (k[j], c[i][j], p[i][j],p[i-1][j] );
                        
                    end
                    else begin
                        half_adder h1 (k[j], c[i][j], p[i][j], sum[i-1][j] );
                       
                    end
                end

                if (i<j) begin

                    if (i==1) begin
                        full_adder f1 (sum[i][j], c[i][j], p[i][j], p[i-1][j], c[i][j-1]);
                        
                    end

                    else begin
                        full_adder s1 (sum[i][j], c[i][j], p[i][j], sum[i-1][j], c[i][j-1]);
                       
                    end
                end
            end
        end
        


        for (j=`n1; j==`n1; j=j+1) begin
            for (i = `n1-1; i>=j-`n1+1 ; i=i-1 ) begin
                
                if (i==j-`n1+1) begin
                    full_adder f1 (k[j], c[i][j], c[`n1-1][j-1], sum[i+1][j],  c[i][j-1]);
                   
                    end

                if (i<`n1-1 && i>j-`n1+1) begin
                    full_adder f1 (sum[i][j], c[i][j], p[i][j], sum[i+1][j],  c[i][j-1]);
                    
                end


                if (i==`n1-1) begin
                    half_adder h1 (sum[i][j], c[i][j], p[i][j],p[j-`n1+1][j] );
                    
                end
            end
        end


        for (j = `n1+1 ; j<2*`n1 ;j=j+1 ) begin
            for (i =`n1-1 ;i>=j-`n1+1 ; i=i-1 ) begin

                

                if (i<`n1-1) begin

                    if (i==j-`n1+1) begin
                        full_adder f1 (k[j], c[i][j], c[i-1][j-1], sum[i+1][j],  c[i][j-1]);
                       
                    end

                    else begin
                        full_adder f1 (sum[i][j], c[i][j], p[i][j], sum[i+1][j],  c[i][j-1]);
                       
                    end
                end

                if (i==`n1-1) begin

                    if (j==2*`n1-2) begin
                            full_adder f1 (k[j], k[j+1], p[i][j], c[j-`n1][j-1], c[i][j-1]);
                        
                    end

                    else begin
                        
                    
                        full_adder f1 (sum[i][j], c[i][j], p[i][j], p[j-`n1+1][j], c[i][j-1]);
                       
                    end
                end
            end

        end


    endgenerate

    

    
endmodule







        
 
