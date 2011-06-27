import geometry;
size(4cm,0);
currentcoordsys=cartesiansystem((3,0), (1,0), (1,1));
show("", currentcoordsys);
point A=(1,1);
dot("$A$", A); draw(locate(0)--A);
draw(locate((0,1))--A, dashed); draw(locate((1,0))--A, dashed);
