  import geometry;
  size(4cm,0);
  show(currentcoordsys, xpen=invisible);
  coordsys R=cartesiansystem((2,2), i=(1,0.5), j=(-1,1));
  show("$O_1$", "$\vec{u}$", "$\vec{v}$", R, xpen=invisible);

  point M=(-1,1); dot("M", M);
  point P=point(R, (1,1)); dot("P", P);
  vector w=P; show("$\vec{w}$", w, linewidth(bp), Arrow(3mm));
  point Q=M+w; dot("Q=M+w", Q);
