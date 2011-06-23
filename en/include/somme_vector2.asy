  import geometry;
  size(8cm,0);
  currentcoordsys=cartesiansystem((0,0), i=(1,1), j=(-1,1));
  show(currentcoordsys, xpen=invisible);

  vector u=(0.5,1), v=rotate(-135)*u/2;
  show("$\vec{u}$", u); show("$\vec{v}$", v);

  point P=(1,-1); dot("P", P, SW);

  draw(Label("$\vec{u}$",align=W), P--(P+u), Arrow);
  draw("$\vec{v}$", P--(P+v), Arrow);
  draw("$\vec{u}+\vec{v}$", P--(P+(u+v)), Arrow);
