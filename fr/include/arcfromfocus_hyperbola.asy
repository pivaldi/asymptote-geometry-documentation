      import geometry; size(10cm,0);
      point C=(4,2); dot("$C$", C, E+NE, red);
      hyperbola H=hyperbola(C,1,1,-20); draw(H, linewidth(bp));
      coordsys R=currentcoordsys; show(R);
      coordsys Rp=canonicalcartesiansystem(H);
      show(Label("$O'$",align=SW,blue), Label("$\vec{u}$",blue), Label("$\vec{v}$",blue),
      Rp, ipen=blue);
      dot("$180$", angpoint(H,180), N+2E);
      dot("$-80$", angpoint(H,-80), NE);
      point P=angpoint(H,70); dot("$70$", P, SE);
      draw(arcfromfocus(H,70,-80), bp+red);
      segment s=segment(H.F1,P); draw(s); line l=line(H.F1,H.F1-Rp.i);
      dot("$F_1$", H.F1, N+NW); markangle("$70^\circ$",l,(line)s,Arrow);
      addMargins(rmargin=3cm);
