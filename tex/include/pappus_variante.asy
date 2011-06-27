import geometry; size(8cm,0);
point P=(0,-4.5); dot(P); inversion inv=inversion(1,P);
line l1=line((0,0),(1,0.35)), l2=line((0,0),(-1,0.35));
path g1=inv*l1, g2=inv*l2;
fill(g1^^g2,evenodd+lightgrey); draw(g1,linewidth(bp)); draw(g2,linewidth(bp));

for (int i:new int[]{-1,1}) {
  point P=(i*0.1,0); triangle t=triangle(shift(P)*vline,l1,l2); int n=15;
  for (int j=0; j <= n; ++j) {
    circle C=excircle(t.AB);
    t=triangle(shift(angpoint(C,(i-1)*90))*vline,l1,l2);
    circle Cp=inv*C; path g=Cp; fill(g,0.95*yellow); draw(g,bp+red); draw(g,blue); }}
shipout(bbox(5mm,Fill(rgb(0.95,0.95,0.8))));
