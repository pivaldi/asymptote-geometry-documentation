import geometry;
size(6cm,0);
currentcoordsys=cartesiansystem((0,0), i=(1,0.5),
                                j=(-0.5,.75));
show(currentcoordsys, xpen=invisible);
point A=(2.5,2); dot("$A$", A, S, red);
real R=2;
circle C=circle(A,R);
draw(C, linewidth(bp));

dot("angpoint(C, 0)", angpoint(C,0), 2W);
dot("angpoint(C, 45)", angpoint(C,45), 2N);
dot("angpoint(C, 135)", angpoint(C,135), 2E);
dot("angpoint(C, 270)", angpoint(C, 270), 2NW);
dot("angpoint(C, -45)", angpoint(C, -45), 2W);
