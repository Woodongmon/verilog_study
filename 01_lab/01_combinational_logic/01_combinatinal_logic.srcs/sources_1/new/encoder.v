module encoder_4_2(
    input [3:0] signal,
    output [1:0] code
);

//sequential - if
    always @(signal)begin
        if(signal==4'b0001)         code=2'b00;
        else if(signal==4'b0010)    code=2'b01;
        else if(signal==4'b0100)    code=2'b10;
        else if(signal==4'b1000)    code=2'b11;
        else                        code=2'b11; 

//sequential - case
    always @(signal)begin
        case(signal)
        4'b0010:begin   code=2'b00; end
        4'b0010:begin   code=2'b01; end
        4'b0010:begin   code=2'b10; end
        4'b0010:begin   code=2'b11; end
        default         code=2'b11;
        endcase
    end

//combinational
    assign code =   (signal==4'b0001) ? 2'b00:  //?는 mux로 합성된다.
                    (signal==4'b0010) ? 2'b01:  
                    (signal==4'b0100) ? 2'b10:  
                                        2'b11;  //default


endmodule                    