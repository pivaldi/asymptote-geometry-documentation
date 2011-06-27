import geometry; size(8cm,0);

point A=(1,1); dot("$A$",A,S,red);
arc C=arc(circle(A,2), 45, 210);
draw(C,linewidth(3mm));
markarc(format("%0g",degrees(C)), C, Arrow);

draw(0.5*C,1.5mm+yellow);

arc Cp=C/3;
draw(Cp, 0.75mm+blue);
markarc(format("%0g",degrees(Cp)),
        radius=25mm, Cp, blue, Arrow);
