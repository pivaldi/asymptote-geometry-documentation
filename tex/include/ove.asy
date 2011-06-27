import geometry;
size(6cm);
point A=(-1,1), B=(1,-1);
point M=(A+B)/2;

point P=rotate(90,M)*B;
arc A1=arccircle(A,B,45), A2=arccircle(B,A,-45,CW),
A3=arccircle(P,relpoint(A2,1),-90,CW),
A4=arccircle(M,A,180);
draw(A1^^A2^^A3^^A4, linewidth(bp));
shipout(bbox());
