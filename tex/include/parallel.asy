import geometry;
size(5cm,0);
coordsys R=cartesiansystem((1,-2), i=(1,1), j=(-1,1));
show("$O$","$\vec{u}$","$\vec{v}$", R, ypen=invisible);

pen bpp=linewidth(bp);
point A=(0,0), B=(2, 0.5), C=(3,2);
vector w=vector(R, (1.5,2)); line AB=line(A,B);

dot("A", A, NW); dot("B", B, NE); dot("C", C, N);
show("$\vec{w}$", w, bpp+0.8*red, Arrow(3mm));
draw(AB, bpp+0.8*blue);
draw(parallel(C, AB), bpp+0.8*blue);
draw(parallel(B, w), bpp+0.8*red);
draw(parallel(A, R.i), bpp);
draw(box((-1,-3),(4,3)), invisible);
