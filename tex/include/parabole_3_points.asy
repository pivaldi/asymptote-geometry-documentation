import geometry;
size(9cm,0);

draw(box((-2,-3),(6,3)), invisible);
point M1=(0,0), M2=(4,-2), M3=(2,1);
pen[] p=new pen[] {black,red,blue,green};
parabola P;
for (int i=0; i < 4; ++i) {
  P=parabola(M1,M2,M3,rotate(45*i)*Ox());
  draw(P, bp+0.8*p[i]);
}
dot(scale(0.75)*"$M_1$", M1, 2*dir(175));
dot(scale(0.75)*"$M_2$", M2, 2*dir(25));
dot(scale(0.75)*"$M_3$", M3, 2*dir(80));
