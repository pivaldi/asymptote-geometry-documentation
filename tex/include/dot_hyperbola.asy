import geometry;
size(10cm,0);

point P1=(-3,0), P2=(3,0);
draw(box((-8,-4),(8,4)), invisible);

dot((path)hyperbola(P1,P2,2.7));

hyperbolanodesnumberfactor=30;
dot((path)hyperbola(P2,P1,2.7));
