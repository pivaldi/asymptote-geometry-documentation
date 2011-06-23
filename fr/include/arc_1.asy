    import geometry; size(6cm,0);
    real a=2, b=1.5;
    point A=(1,1); dot("$A$", A, red);
    ellipse EL=ellipse(A,a,b,90); draw(EL, bp+grey);
    dot("$F_1$", EL.F1, S); dot("$F_2$", EL.F2, N);
    draw(EL.F1--EL.F2);
    arc AE=arc(EL, 45, 270);
    draw(AE, linewidth(bp), Arrow(3mm), BeginBar);
    point Bp=point(AE, 0), Ep=relpoint(AE,1);
    draw(EL.F1--Bp); draw(EL.F1--Ep);
    markangle(format("$%0g^\circ$",AE.angle1),
    EL.F2,EL.F1,Bp, radius=1.5cm, Arrow);
    markangle(Label(format("$%0g^\circ$",AE.angle2),
    Relative(0.35)),
    EL.F2, EL.F1, Ep, radius=0.75cm, Arrow);
