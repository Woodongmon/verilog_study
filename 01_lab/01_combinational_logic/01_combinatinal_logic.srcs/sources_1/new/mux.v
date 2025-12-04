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




