  import geometry;
  size(10cm,0);
  int n=12; segment[] S;
  inversion inv=inversion(1,(n/2+0.45,n/2+0.45));
  transform tv=shift(0,1), th=shift(1,0);
  for (int i=0; i < n; ++i)
  for (int j=0; j < n; ++j) {
    for (int l=0; l < 4 ; ++l)
    S[l]=segment(point(tv^i*th^j*unitsquare,l), point(tv^i*th^j*unitsquare,(l+1)%4));
    path g;
    for (int l=0; l < 4; ++l) g=g--(path)(inv*S[l]);
    g=g--cycle;
    if((i+j)%2 == 0)  draw(g); else fill(g);
  }
