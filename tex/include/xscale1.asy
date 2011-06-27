import geometry;
size(6cm,0);
real k=sqrt(2);
point A=(1,2); dot("A", A, S);
point M=(-1,1); dot("M", M, W);

point Ap=xscale(k, M)*A; dot("A'", Ap, red);
label("A'=xscale(k,M)*A", (0.75,1.125), red);

point P=extension(A, Ap, M, M+N);
dot("P", P, W); draw(M--P); draw(P--Ap);
perpendicularmark(P, dir(-45));
distance("$k\times PA$", P, Ap, -3mm, grey);
