size(8.5cm,0);import geometry;
triangle t=triangleabc(5,6,7);
drawline(t, linewidth(bp));
draw(incircle(t));
triangle itr=intouch(t);
draw(itr,bp+0.8*green); dot(itr, 0.8*red);
point Ge=gergonne(t);
dot("$G_e$", Ge, 2*dir(-10));
draw(line(Ge,t.A), 0.8*green);
draw(line(Ge,t.B), 0.8*green);
draw(line(Ge,t.C), 0.8*green);
addMargins(1cm,1cm);