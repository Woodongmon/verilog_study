module mux_2_1(

    input [1:0]d,
    input s,
    output f
);

    assign f = s ? d[1] : d[0];
    // assign f = d[s];

endmodule


module mux_4_1(

    input [3:0]d,
    input [1:0]s,
    output f
);

    assign f = d[s]; //권장방식
    // assign f = s[1] ? (s[0] ? d[3] : d[2]) :
    //                   (s[0] ? d[1] : d[0]);
endmodule


module demux_1_4(

    input d,
    input [1:0]s,
    output [3:0]f
);

    // assign f[0] = (s==2'b00)?d:0;
    // assign f[1] = (s==2'b01)?d:0;
    // assign f[2] = (s==2'b10)?d:0;
    // assign f[3] = (s==2'b11)?d:0; 

    assgin f =  (s==2'b00)?{3'b000,d} :
                (s==2'b01)?{2'b00,d,1'b0} :
                (s==2'b10)?{1'b0,d,2'b00} : 
                {d,3'b000};
    

endmodule

