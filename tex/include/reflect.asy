import geometry;
size(5cm,0);
point A=origin, B=NE, M=2*B+N;
dot("A", A, I*unit(A-B)); dot("B", B, I*unit(A-B));

line AB=line(A,B);
draw(AB, linewidth(bp));
transform reflect=reflect(AB);

point Mp=reflect*M;
dot("M",M, unit(M-Mp)); dot("M'", Mp, unit(Mp-M), red);
draw(segment(M,Mp), grey, StickIntervalMarker(2,2,grey));
