import geometry;
size(4cm);

circle C=circle((point)(0,0),1);
draw(C, linewidth(bp));

point O=dir(45);
dot("$O$",O);

inversion inv=inversion(3,O);
circle Cp=inv*C;
draw(Cp);

dot(intersectionpoints(C,Cp), red);
