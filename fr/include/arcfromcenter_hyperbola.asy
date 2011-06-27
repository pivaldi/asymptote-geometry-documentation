      import geometry; size(12cm);
      coordsys R=currentcoordsys; show(R);
      point C=(3,1.25); dot("$C$", C, 2*dir(120), red);
      hyperbola H=hyperbola(C, 2, 1.5, -10); draw(H, linewidth(bp));
      coordsys Rp=canonicalcartesiansystem(H);
      show(Label("$O'$", align=SW,blue), Label("$\vec{u}$",blue),
      Label("$\vec{v}$",blue), Rp, ipen=blue);
      dot("$0$", angpoint(H,0,fromCenter), 2*dir(120));
      dot("$180$", angpoint(H,180,fromCenter), 2*dir(30));
      draw(arcfromcenter(H,-20,30), bp+red); dot("$F_1$", H.F1, N+NW);
      point P=angpoint(H,30,fromCenter); dot("$30$", P, NW);
      segment s=segment(C, P); draw(s);
      markangle("$30^\circ$", Ox(Rp), (line) s, radius=2cm, Arrow);
