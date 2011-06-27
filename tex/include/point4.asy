import geometry;
size(4cm,0);
coordsys R=cartesiansystem((2,3), i=(1,0), j=(0.5,1));
show(currentcoordsys);
show(Label("$O_1$",blue), Label("$\vec{u}$",blue),
     Label("$\vec{v}$",blue), R, xpen=invisible, ipen=blue);
pair A=(3,1);
dot("", A, red);
point B=point(R, A/R);
dot("", B, W, blue);
