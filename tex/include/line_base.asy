import geometry;
size(6cm,0);
linemargin=2mm;
point A=(0,0), B=(2, 0), C=(3,1), D=(1,1);
dot("A", A, NW); dot("B", B, SE); dot("C", C);
dot("D", D, W);

line AB=line(A, B);
line CB=line(C, false, B);
line CD=line(C, false, D, false);
line AD=line(A, false, D);

draw("(AB)", AB); draw("[CB)", CB);
draw(Label("[CD]",Relative(0.5),align=N), CD);
draw("[AD)", AD); draw(box((-1,-2),(4,3)));
