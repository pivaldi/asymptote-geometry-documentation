import geometry;
size(8cm);

point P1=(-3,0), P2=(3,0);
draw(box((-5,-5),(5,5)), invisible);

hyperbola H=hyperbola(P1,P2,2.2);

draw(H, linewidth(bp));
draw(H.A1^^H.A2, grey);

draw(conj(H), bp+0.8*red);
