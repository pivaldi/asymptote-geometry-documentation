import geometry;
size(6cm,0);

triangle t=triangleabc(4,5,6);
circle C=circumcircle(t), inC=incircle(t);

draw(inC, bp+0.8*red);
draw(C, bp+0.8*blue);
draw(t, linewidth(bp));

draw(inC*t, linewidth(bp));
draw(inC*C, bp+0.8*blue);
