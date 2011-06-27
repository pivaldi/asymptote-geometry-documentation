import geometry;
size(6cm,0);
point A=SW, B=NE;
label("$A$", A, NW); label("$B$", B, SE);

line l=line(A,B);
draw(l, bp+red);

segment s=l;
draw(s, linewidth(3bp));
draw(line(rotate(90,midpoint(s))*s));
draw(box(2*A,2*B), invisible);
