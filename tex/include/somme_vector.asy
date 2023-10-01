import geometry;
size(4cm,0);
pen bpp=linewidth(bp);
currentcoordsys=cartesiansystem((0,0), i=(1,1), j=(-1,1));
show(currentcoordsys, xpen=invisible);

vector u=(0.5,1), v=rotate(-135)*u/2;
show("$\vec{u}$", u, bpp, Arrow(3mm));
show("$\vec{v}$", v, bpp, Arrow(3mm));
show(Label("$\vec{u}+\vec{v}$",EndPoint), u+v, bpp, Arrow(3mm));
