  import geometry;
  size(4cm,0);
  currentcoordsys=cartesiansystem((0,0), i=(1,0), j=(0.5,1));
  show(currentcoordsys);
  coordsys R=cartesiansystem((4,3), i=(-1,0), j=(-0.5,1));
  show(Label("$O_1$",blue), Label("$\vec{u}$",align=S,blue),
  Label("$\vec{v}$",align=E,blue), R, xpen=invisible, ipen=blue);
  point A=(3,1);
  dot("", A, red);
  point B=changecoordsys(R, A);
  dot("", B, W, blue);
