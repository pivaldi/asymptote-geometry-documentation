import geometry;
size(10cm);

point F=(2,-1.5);
dot("$F$",F,N,red);
parabola p=parabola(F,0.2,90);

draw(box((0.1,-1),(3,0.5)), dashed);
draw((path)p, 2*bp+dashed);

p.bmin=(0,-0.4);
p.bmax=(2.5,0.75);
draw(box(p.bmin,p.bmax), red);
draw((path)p, bp+red);
