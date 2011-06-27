import geometry;
size(0,6cm);

point A=(0,0), B=(0,2);
line l=line(A,B); show(l);

dot("curpoint(l,0.75)", curpoint(l,0.75));
dot("curpoint(l,-0.75)", curpoint(l,-0.75));
dot("curpoint(l,1.5)", curpoint(l,1.5));
dot("curpoint(l,-1.5)", curpoint(l,-1.5));

addMargins(bmargin=5mm);
