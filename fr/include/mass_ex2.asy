  import geometry;
  size(5cm,0);
  int n=50;
  mass[] M;
  real m, step=360/n;
  pair dir;
  for (int i=0; i < 2*n; ++i) {
    dir=dir(i*step);
    m=i+1;
    M.push(mass(m*dir, m));
    dot(locate(M[i]));
  }
  dot("G",masscenter(... M), red);
