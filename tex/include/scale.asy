import geometry;
size(7.5cm,0);
pen bpp=linewidth(bp); real k=sqrt(2);

point A=(0,0); dot("A", A, SW);
point B=(1,2); dot("B", B, N);
point M=(-1,1);
dot("M", M, -dir(M--A,M--B));

point Ap=scale(k, M)*A;
dot("A'", Ap, SW, red);
point Bp=scale(k, M)*B;
dot("B'", Bp, N, red);

draw(M--Ap, grey); draw(M--Bp, grey);
draw(A--B, bpp);
draw(rotate(unit(Bp-Ap))*"$k\times AB$",
     Ap--Bp, bpp+red);
