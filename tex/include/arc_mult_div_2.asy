import geometry; size(8cm,0);
point C=(1,1); dot("$C$", C, 2*dir(80), red);
arc a=arc(ellipse(C,2,1,45),90,0,fromCenter);
draw(a, linewidth(3mm));
markarc(format("%0g", degrees(a)),
        radius=-0.5*markangleradius(), a);

draw(0.5*a, 1.5mm+yellow);

arc ap=a/3;
draw(ap, 0.75mm+blue);
markarc(format("%0g", degrees(ap)),
        radius=1.5*markangleradius(),ap,blue);
