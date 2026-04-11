module tff(
    input T,
    input Clock,
    output Q, 
    output NotQ
);

    jkff inst2(
        .J(T),
        .K(T),
        .Clock(Clock),
        .Q(Q),
        .NotQ(NotQ)
    );
    
endmodule