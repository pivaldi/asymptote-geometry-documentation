  import geometry;
  size(3cm,0);
  circle cle1=circle((0,0), 1);
  circle cle2=circle((sqrt(2),sqrt(2)), 1);
  draw(cle1); draw(cle2);
  dot(intersectionpoints(cle1, cle2));
