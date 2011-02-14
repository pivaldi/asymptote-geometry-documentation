  import geometry;
  size(7cm,0);
  currentcoordsys=cartesiansystem((2,2), i=(-1,-1),
  j=(0,1));
  show("$O'$","$\vec{u}$", "$\vec{v}$",
  currentcoordsys, ipen=blue, xpen=invisible);
  show(defaultcoordsys);
  circle C=circle((0.5,-1), 3);
  draw(C, 2bp+0.8*blue, Arrow(3mm));
  circle Cp=circle(point(defaultcoordsys,(1,1)), 4);
  draw(Cp, dotsize()+0.8*red, Arrow(3mm));
  dot((path)Cp);
