import geometry;
size(4cm,0);
coordsys R=cartesiansystem((1,2), i=(1,0.5), j=(-1,1));
show(R);

for (int i=0; i < 360; i += 10) {
  pen p=(i/360)*red;
  dot(point(R, R.polar(1,radians(i))), p);
}

point A=point(R, R.polar(1,radians(40)));
draw((string)abs(A), R.O--A);
