import geometry; size(4.5cm,0);
currentcoordsys=cartesiansystem((2,1), i=(1,0.5), j=(-1,1));
show("$O_1$", "$\vec{u}$", "$\vec{v}$", currentcoordsys,
     xpen=invisible); show(defaultcoordsys, xpen=invisible);

real k=sqrt(2); point P=(1,1); dot("P", P);

point P1=scale(k)*P, P2=scaleO(k)*P; dot("scale(k)*P", P1, N);
dot("scaleO(k)*P", P2, W); draw((0,0)--locate(P1));
draw(origin()--P2);
