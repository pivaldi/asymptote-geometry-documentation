import geometry;
size(6cm,0);
real k=sqrt(2);
point A=(2,1);
point M=(-1,-1); dot("M", M, W);

point Ap=yscale(k, M)*A;
dot("A'", Ap, red); dot("A", A, I*unit(A-Ap));
label("A'=yscale(k,M)*A", (0,1), red);

point P=intersectionpoint(line(A,Ap), line(M,M+E));
dot("P", P); draw(M--P); draw(P--Ap);
perpendicularmark(P, dir(135));
distance("$k\times PA$",P,Ap,-12mm,grey,grey+dashed);
