module FSM_EXC (E0, E1, E2, NEW_E0, NEW_E1, NEW_E2);
    input E0;
    input E1;
    input E2;
    output NEW_E0;
    output NEW_E1;
    output NEW_E2;

    //assign NEW_E0 = 0;
    //assign NEW_E1 = 0;
    //assign NEW_E2 = 0;

    assign NEW_E0 = (~E0 & E1 & E2) | (E0 & ~E1 & ~E2);
    assign NEW_E1 = ~E0 & (E1^E2);
    assign NEW_E2 = (~E0 & ~E2) | (E0 & ~E1 & ~E2);
endmodule