import geometry;
size(6cm,0);
currentcoordsys=cartesiansystem((2,1), i=(1,0.5), j=(-0.75,1));
show(currentcoordsys, ipen=blue, jpen=red, xpen=invisible);

real k=sqrt(2);
point A=(2,1.25);
point M=(-0.75,0.25); dot("M", M, W);

point Ap=xscale(k, M)*A;
dot("A'", Ap, red); dot("A", A, I*unit(A-Ap));

point P=intersectionpoint(line(A,Ap), line(M,M+N));
dot("P", P, W); draw(M--P, red); draw(P--Ap, blue);
distance("$k\times PA$", P, Ap, -3mm, grey);
