import geometry;
size(5cm,0);
pen bpp=linewidth(bp);
coordsys R=cartesiansystem((0.5,-2), i=(1,1), j=(-1,1));
show("$O$","$\vec{u}$","$\vec{v}$", R, xpen=bpp,
     ypen=invisible);
point A=(0,1), B=(2,2);
vector w=vector(R, (2,2)); line AB=line(A,B);
dot("A", A, 2*dir(165)); dot("B", B, N);
show(Label("$\vec{w}$",Relative(0.75)), w, bp+0.8*red,
     Arrow(3mm));
draw(AB, bp+0.8*blue);
draw(perpendicular(B, AB), bp+0.8*blue);
draw(perpendicular(B, w), bp+0.8*red);
draw(perpendicular(A, R.i), bpp);
draw(box((-1,-3),(4,3)), invisible);
