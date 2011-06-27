import geometry; size(8cm,0);
point F=(0,0); dot("$F$", F, NE);
parabola p=parabola(F, 0.1, 30);
draw(p, linewidth(bp));
point C=shift(2*(p.V-p.F))*p.V;
circle cle=circle(C, 0.2);
draw(cle);
for (int i=0; i < 360; i+=90) {
  point M=C+0.2*dir(i+30);
  dot(scale(0.75)*("$M_"+(string)(i/90)+"$"),
      M, unit(M-C));
  line[] tgt=tangents(p, M);
  draw(tgt, 0.8*red);
  for (int i=0; i < tgt.length; ++i) {
    dot(intersectionpoints(p, tgt[i]), blue);
  } }
