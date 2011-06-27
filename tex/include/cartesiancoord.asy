import geometry;
size(4cm,0);
coordsys R=cartesiansystem((2,1), i=(1,1), j=(-1,1));

show("$O'$","$\vec{u}$", "$\vec{v}$", R, xpen=invisible);
show("$O''$","$\vec{u'}$", "$\vec{v'}$",
     rotate(90)*R, xpen=invisible);
show(defaultcoordsys);
