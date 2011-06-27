import geometry;
size(6cm,0);
currentcoordsys=cartesiansystem((0,0), i=(1,0.5),
                                j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);

point A=(2.5,2); dot("$A$", A, S, red);
real R=2;
circle C=circle(A,R);
draw(C, linewidth(bp));

dot("relpoint(C, 0)", relpoint(C,0), 2W);
dot("relpoint(C, 0.25)", relpoint(C,0.25), 2SE);
dot("relpoint(C, 0.5)", relpoint(C,0.5), 2E);
dot("relpoint(C, -0.25)", relpoint(C, -0.25), 2NW);
dot("relpoint(C, 1.125)", relpoint(C, 1.125), 2N);
