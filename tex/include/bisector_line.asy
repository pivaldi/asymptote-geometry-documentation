import geometry;
size(5cm,0);
point A=(0,0), B=(2*Cos(40),2*Sin(40)); line l1=line(A,B);
draw(l1, linewidth(bp));
line l2=rotate(100,A)*l1;
draw(l2, linewidth(bp));
line bis=bisector(l1,l2); draw(bis, bp+blue);
line Bis=bisector(l1,l2,false); draw(Bis, bp+0.8*red);
markangleradiusfactor *= 4;
marker mark2=StickIntervalMarker(2, 1, red, true);
markangle(2, l1, l2, red, mark2);
markangle(2, reverse(l2), reverse(l1), radius=-markangleradius(),
          red, mark2);
markangleradiusfactor *= 3/2;
marker mark1=StickIntervalMarker(2, 2, blue, true);
markangle(2, l1, reverse(l2), radius=-markangleradius(),
          blue, mark1);
markangle(2, reverse(l1), l2, radius=-markangleradius(),
          blue, mark1);
draw(box((-1,-1),(1,1)), invisible);
