import geometry;
size(6cm,0); real R=2;
currentcoordsys=cartesiansystem((0,0), i=(1,0.5),
                                j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);
point A=(2.5,2); dot("$A$", A, S, red);
circle C=circle(A,R); draw(C, linewidth(bp));
draw(rotate(A-point(C,0))*("$R="+(string)R+"$"),
     A--point(C,0), S, Arrows);

dot("curpoint(C, 0)", curpoint(C,0), 2W);
dot("curpoint(C, pi)", curpoint(C,pi), 2SE);
dot("curpoint(C, 3*pi/2)", curpoint(C,3*pi/2), 2E);
dot("curpoint(C, -pi)", curpoint(C, -pi), 2NW);
dot("curpoint(C, 2pi)", curpoint(C, 2*pi), 2E);
