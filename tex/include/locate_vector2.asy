import geometry; size(4cm,0);
coordsys R=cartesiansystem((2,1), i=(1,1), j=(-0.75,1));
show("$O_1$", "$\vec{u}$", "$\vec{v}$", R, xpen=invisible);
show(currentcoordsys);

vector w=vector(R, (1,1));
show("$\vec{w}$", w, linewidth(bp), Arrow(3mm));
dot("w", w, N); dot("point(w)", point(w), N);
