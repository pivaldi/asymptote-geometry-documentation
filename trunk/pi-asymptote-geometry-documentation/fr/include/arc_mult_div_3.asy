    import geometry; size(8cm,0);
    point C=(1,1); dot("$C$", C, dir(30), red);

    arc a=arc(ellipse(C,2,1,45), -45, 45);
    draw(a, linewidth(3mm));
    dot("$F_1$", a.el.F1, dir(210), red);
    markarc(format("%0g", degrees(a)),
    radius=2.5*markangleradius(), a);

    draw(0.5*a, 1.5mm+yellow);

    arc ap=a/3;
    draw(ap, 0.75mm+blue);
    markarc(format("%0g", degrees(ap)),
    radius=1.5*markangleradius(),ap,blue);
