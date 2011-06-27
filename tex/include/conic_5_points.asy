import geometry;
size(18cm,0);
point B=(1.75,3), C=(-1,2), D=(-1.5,-0.5), F=(1.5,-1);

for (int i=0; i < 360; i += 21) {
  point A=shift(D)*dir(i);
  dot(A,red);
  conic co=conic(A,B,C,D,F);
  draw(co, co.e < 1 ? black : 0.8*blue);
}
