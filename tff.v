module tff(
    input T,
    input Clock,
    input Reset,
    output reg Q, 
    output NotQ
);

    initial begin
        Q <= 0;
    end
    
    always @(posedge Clock)
        if (Reset)
            Q <= 1'b0;
        else if (T)
            Q <= ~Q;

    assign NotQ = ~Q;
    
endmodule