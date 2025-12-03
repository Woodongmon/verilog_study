module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);

    mod_a u1(
        .input1(a),    
        .input2(b),    
        .input3(c),    
        .input4(d),
        
        .out1(out1),    
        .out2(out2)

    );

endmodule
