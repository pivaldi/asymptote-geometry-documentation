import geometry;
size(7.5cm,0);

point A=(2.5,-1); dot("$A$", A, SW);
circle C=circle(A,1); draw(C, linewidth(bp));

path Cp=shift(A)*scale(2)*unitcircle;
draw(Cp, grey);
for (int i=0; i < 360; i+=45) {
  point M=relpoint(Cp, i/360);
  dot(format("$M_%f$", i/45), M, 2*unit(M-A));
  draw(tangents(C, M), 0.8*red);
}
addMargins(10mm,10mm);
