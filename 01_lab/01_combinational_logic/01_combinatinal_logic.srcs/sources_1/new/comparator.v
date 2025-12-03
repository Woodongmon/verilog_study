module comparator(
    input a,b,
    output equal, not_equal, less, more 
);

    assign equal        =   a==b;
    assign not_equal    =   a!=b;
    assign less         =   a<b;
    assign more         =   a>b;   

endmodule