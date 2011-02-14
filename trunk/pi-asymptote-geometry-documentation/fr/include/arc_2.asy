    import geometry; size(8cm,0);
    real a=2, b=1;
    point A=(1,1); dot("$A$",A,S,red);
    ellipse EL=ellipse(A,a,b);
    arc AE=arc(EL, 45, 210, fromCenter);
    draw(AE, linewidth(bp), Arrow(3mm), BeginBar);
    arc AEp=arc(EL, 45, 210, fromCenter, CW);
    draw(AEp, bp+0.8*red, Arrow(3mm));
    circle C=circle(A,a); arc AC=arc(C, 45, 210);
    draw(AC, linewidth(bp), Arrow(3mm), BeginBar);
    arc ACp=arc(C, 45, 210, CW);
    draw(ACp, bp+0.8*red, Arrow(3mm));
    markarc(format("$%0g^\circ$",degrees(AC)),
    AC, radius=1.5cm, Arrow);
    markarc(format("$%0g^\circ$",degrees(ACp)),
    ACp, markpen=0.8*red, Arrow);
