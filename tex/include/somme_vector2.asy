import geometry;
size(8cm,0);
pen bpp=linewidth(bp);
currentcoordsys=cartesiansystem((0,0), i=(1,1), j=(-1,1));
show(currentcoordsys, xpen=invisible);

vector u=(0.5,1), v=rotate(-135)*u/2;
show("$\vec{u}$", u, bpp, Arrow(3mm));
show("$\vec{v}$", v, bpp, Arrow(3mm));
point P=(1,-1); dot("P", P, SW);
draw(Label("$\vec{u}$",align=W), P--(P+u), bpp, Arrow(3mm));
draw("$\vec{v}$", P--(P+v), bpp, Arrow(3mm));
draw("$\vec{u}+\vec{v}$", P--(P+(u+v)), bpp, Arrow(3mm));
