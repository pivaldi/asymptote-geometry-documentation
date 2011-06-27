import geometry; size(7cm,0);
point A=(-1,0), B=(1,0);
dot("$A$", A, S); dot("$B$", B, S);
pen bpp=linewidth(bp);

arc Ac=arcsubtended(A,B,30); draw(Ac, bpp);
dot("$O$", Ac.el.C);
markarc("$\alpha$", Ac, n=2, radius=1cm,
        sectorpen=bpp, markpen=currentpen);

for (int i=0; i < 3; ++i) {
  point M=relpoint(Ac, 0.25+0.25*i);
  draw(M--A^^M--B, linewidth(bp));
  markangle("$\frac{\alpha}{2}$", A, M, B); }
