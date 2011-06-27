import geometry;
size(6.5cm,0);
draw(unitcircle, grey);
point[] P;
real[] a=new real[]{0, 20, 60, 90, 240, 280};
real cor=24.0036303043338;
for (int i=0; i < 6; ++i) {
  P.push((Cos(a[i]-cor),Sin(a[i]-cor)));
}
pen[] p=new pen[] {0.8*blue, 0.8*yellow, 0.8*green};
line[] l;
for (int i=0; i < 6; ++i) {
  l.push(line(P[i],P[(i+1)%6]));
  draw(l[i], p[i%3]);
  draw(P[i]--P[(i+1)%6], linewidth(bp));
}
point[] inter;
for (int i=0; i < 3; ++i) {
  inter.push(intersectionpoint(l[i],l[(i+3)%6]));
  dot(inter[i], 1.5*dotsize()+0.8*red);
}
draw(line(inter[0],inter[1]), bp+0.8*red);
draw(box((-1,-2.722), (2.229,2.905)), invisible);
