  import geometry;
  size(7cm,0);
  int[][] parties(int n) {
    int[][] oi;

    void loop(int[] arr, int i) {
      oi.push(arr);
      for (int j=i; j < arr.length; ++j) {
        int[] tt=copy(arr);
        tt[j]=1;
        loop(tt, j+1);}}
    loop(sequence(new int(int n){return 0;}, n), 0);
    return oi;}

  int n=6;
  real step=360/n;
  point[] M;

  for (int i=0; i < n; ++i) {
    M[i]=mass(dir(i*step), 1);
    dot(M[i],linewidth(2mm));}

  int[][] part=parties(n); int l=part.length;
  point[][] group=new point[l][];

  for (int i=0; i < l; ++i)
  for (int j=0; j < n; ++j)
  if(part[i][j] == 1) group[i].push(M[j]);

  point[][] partbar=new point[l][2];

  for (int i=0; i < l; ++i) {
    if(group[i].length > 0) partbar[i][0]=masscenter(...group[i]);
    for (int j=0; j < group[i].length; ++j)
    draw(group[i][j]--partbar[i][0]);
    if(group[i].length > 0) dot(partbar[i][0], 0.8*red);}
