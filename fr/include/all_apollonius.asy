    import geometry;
    size(18cm,0); int shx=18;
    circle C1=circle((0,0),2), C2=circle((5,5), 3), C3=circle((6,-2),1);
    picture disc;
    fill(disc,(path)C1); fill(disc,(path)C2); fill(disc,(path)C3);
    transform tv=shift(S), th=shift(E);
    int k=0, l=0;
    for (int i=0; i < 2 ; ++i)
    for (int j=0; j < 2; ++j) {
      picture[]  tpic; tpic[0]=new picture; tpic[1]=new picture;
      add(tpic[0], disc); add(tpic[1], disc);
      inversion S1=inversion(C2,C3, sgnd(i-1)), S2=inversion(C1,C3, sgnd(j-1));
      line cl=line(S1.C,S2.C);
      point M=relpoint(C3,0.125), M2=S2*M, M1=S1*M;
      circle C=circle(M,M2,M1);
      line L=radicalline(C,C3);
      point H=intersectionpoint(L,cl);
      circle Cp=circle(H,C3.C);
      point[] T=intersectionpoints(Cp,C3);
      point[][] Tp= new point[][] {{S2*T[0], S1*T[0]},{S2*T[1], S1*T[1]}};
      draw(tpic[0], circle(T[0],Tp[0][0],Tp[0][1]), bp+0.8*red);
      draw(tpic[1], circle(T[1],Tp[1][0],Tp[1][1]), bp+0.8*red);
      add(tv^(shx*(i+1))*th^(shx*(l))*tpic[0]);
      l=(l+2)%4; ++k;
      add(tv^(shx*(i+1))*th^(shx*(l+1))*tpic[1]);
    }
