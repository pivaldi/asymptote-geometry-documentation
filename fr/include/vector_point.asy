  import geometry; size(4cm,0); pen bpp=linewidth(bp);
  coordsys R=cartesiansystem((2,1), i=(1,1), j=(-0.75,1));
  show("$O_1$", "$\vec{u}$", "$\vec{v}$", R, xpen=invisible);
  show(currentcoordsys); vector w=vector(R, (1,1));
  show("$\vec{w}$", w, bpp, Arrow(3mm));
  show("$\vec{w}$", locate(w), bpp, Arrow(3mm));
  draw((1,2)--locate(w), green);
  draw((1,2)--point(w), blue);
