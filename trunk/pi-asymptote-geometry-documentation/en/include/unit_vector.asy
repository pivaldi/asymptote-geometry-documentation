  import geometry; size(4cm,0);
  coordsys R=cartesiansystem((2,1), i=(1,1), j=(-0.75,1));
  show("$O_1$", "$\vec{u}$", "$\vec{v}$", R, xpen=invisible);
  show(currentcoordsys, xpen=invisible);

  point A=point(R, (1,1)); dot("A", A); point B=point(R, (2,2));
  dot("B", B); point M=unit(B-A); dot("M", M);
  dot("unit(B-A)", unit(B-A), N);
  dot("A+unit(B-A)", A+unit(B-A), W);
