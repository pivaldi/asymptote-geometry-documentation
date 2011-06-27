import geometry; size(4cm,0);
coordsys R=cartesiansystem((2,1), i=(1,1), j=(-0.75,1));
show("$O_1$", "$\vec{u}$", "$\vec{v}$", R, xpen=invisible);
show(currentcoordsys);
point M=point(R, (1,1)); dot("M", M, N);
dot("vector(M)", vector(M), N);
show(Label(scale(0.75)*"$\vec{O_1M}$", Relative(0.75)),
     M, linewidth(bp), Arrow(3mm));
