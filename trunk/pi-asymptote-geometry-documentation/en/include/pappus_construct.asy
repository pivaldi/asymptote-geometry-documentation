  import geometry; size(7cm,0);

  inversion inv=inversion(10,(-4,0));
  line l1=line((-1,0),(-1,1)), l2=line((1,0),(1,1));
  draw(l1, bp+0.8*blue); draw(l2, bp+0.8*green);
  clipdraw(inv*l1,bp+0.8*blue);
  clipdraw(inv*l2,bp+0.8*green);

  int n=10;
  for (int i=0; i <= n; ++i) {
    circle C=circle((0,2*i),1);
    circle Cp=inv*C;
    draw(Cp,bp+(1-abs(i/4))*red);
    if(abs(i) < 4){
      draw(C,bp+(1-abs(i/4))*red);
      draw((1,2*i)--inv*(1,2*i),0.8*green);
      draw((-1,2*i)--inv*(-1,2*i),0.8*blue);
    }
  }
  addMargins(1mm,1mm);
