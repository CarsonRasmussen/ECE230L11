module modulo_divider(
    input Clock,
    input Reset,
    output Out,
    output [2:0] State
);

    wire [2:0] Connect;
    wire [2:0] DConnect;
    wire Connect1;
    wire Connect2;
    wire Connect3;
    wire ConnectOut;
    wire CountOut;
    wire OutD;
    
    assign CountOut = (State[2] & ~State[1] & State[0]) | Reset;
    assign OutD = Out ^ CountOut;     

    dff dff1(
        .D(DConnect[0]),
        .Clock(Clock),
        .Reset(CountOut),
        .Q(State[0]),
        .NotQ(Connect[0])
    );
    
    dff dff2(
        .D(DConnect[1]),
        .Clock(Clock),
        .Reset(CountOut),
        .Q(State[1]),
        .NotQ(Connect[1])
    );

    dff dff3(
        .D(DConnect[2]),
        .Clock(Clock),
        .Reset(CountOut),
        .Q(State[2]),
        .NotQ(Connect[2])
    );
    
    dff dffout(
        .D(OutD),
        .Clock(Clock),
        .Reset(Reset),
        .Q(Out),
        .NotQ(ConnectOut)
    );
    
    full_adder adder1(
        .A(State[0]),
        .B(1'b1),
        .Cin(1'b0),
        .Cout(Connect1),
        .Y(DConnect[0])
    );
    
    full_adder adder2(
        .A(State[1]),
        .B(1'b0),
        .Cin(Connect1),
        .Cout(Connect2),
        .Y(DConnect[1])
    );

    full_adder adder3(
        .A(State[2]),
        .B(1'b0),
        .Cin(Connect2),
        .Cout(Connect3),
        .Y(DConnect[2])
    );
   
endmodule