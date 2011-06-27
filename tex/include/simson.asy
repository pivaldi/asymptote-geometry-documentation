import geometry; size(8cm,0);
triangle t=triangleabc(5,6,7);
label(t, alignFactor=4);
drawline(t, linewidth(bp));
circle C=circle(t); draw(C, bp+dashed);
pen[] p=new pen[] {0.8*red,0.8*blue,
                   0.8*green, 0.8*yellow};
for (int i=0; i < 4; ++i) {
  real x=35+i*90; point P=angpoint(C,x);
  dot("$P_"+(string)i+"$",P,dir(x),p[i]);
  for (int j=1; j < 4; ++j) {
    segment Sg=segment(pedal(t.side(j),P));
    draw(Sg,p[i]);
    markrightangle(P,Sg.B,t.vertex(j),p[i]);
  }
  drawline(pedal(t,P), bp+p[i]);
}
addMargins(1cm,1cm);
