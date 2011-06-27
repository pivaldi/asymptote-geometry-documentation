import geometry;
size(6cm,0);
currentcoordsys=cartesiansystem((2,1), i=(1,0.5), j=(-0.75,1));
show(currentcoordsys, ipen=blue, jpen=red, xpen=invisible);

real k=sqrt(2);
point A=(2,1);
point M=(-2,-1); dot("M", M, W);

point Ap=yscale(k, M)*A;
dot("A'", Ap, -I*unit(A-Ap), red); dot("A", A, -I*unit(A-Ap));
point P=intersectionpoint(line(A,Ap), line(M,M+E));
dot("P", P, locate(unit(A-Ap))); draw(M--P, blue); draw(P--Ap, red);
distance("$k\times PA$", P, Ap, 3mm, grey);
