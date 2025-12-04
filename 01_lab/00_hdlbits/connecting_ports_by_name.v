module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    //module mod_a ( output out1, output out2, input in1, input in2, input in3, input in4);
    //mod_a는 불러올 모듈이름, u1은 인스턴스 개수, .외부wire(내부에 연결된 포트)
    mod_a u1(
        .in1(a),
        .in2(b),
        .in3(c),
        .in4(d),

        .out1(out1),
        .out2(out2)
    );

endmodule
