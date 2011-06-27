import geometry;
size(0,6cm);

point A=(0,0), B=(0,2);
line l=line(A,B); show(l);

dot("relpoint(l,0.75)", relpoint(l,0.75));
dot("relpoint(l,-0.75)", relpoint(l,-0.75));
dot("relpoint(l,1.5)", relpoint(l,1.5));
dot("relpoint(l,-1.5)", relpoint(l,-1.5));

addMargins(bmargin=5mm);
