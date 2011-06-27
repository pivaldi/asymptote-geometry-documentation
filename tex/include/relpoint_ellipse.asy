import geometry;
size(6cm,0);
show(currentcoordsys, xpen=invisible);
point A=(2.5,2); dot("$A$", A, S, red);
ellipse el=ellipse(A,2,1,45);
draw(el, linewidth(bp));

dot("relpoint(el, 0)", relpoint(el,0), 2S);
dot("relpoint(el, 0.25)", relpoint(el,0.25), 2S);
dot("relpoint(el, 0.5)", relpoint(el,0.5), 2S+E);
dot("relpoint(el, -0.25)", relpoint(el, -0.25), 2SW);
dot("relpoint(el, 1.125)", relpoint(el, 1.125), 2W);
