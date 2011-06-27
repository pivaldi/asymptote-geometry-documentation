import geometry; size(4.5cm);
currentcoordsys=rotate(45)*defaultcoordsys;
show(currentcoordsys);
abscissa cur=curabscissa(pi);
ellipse el=ellipse(origin(),2,1,-45); draw(el,linewidth(bp));
circle c=circle(origin(),1);          draw(c,linewidth(bp));
dot(point(el,cur), red); dot(point(c,cur), red);
