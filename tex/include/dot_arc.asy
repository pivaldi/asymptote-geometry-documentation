import geometry;
size(4cm,0);
ellipsenodesnumberfactor=100;
point A=(1,1); dot("$A$",A,S,red);
ellipse EL=ellipse(A,2,1);
dot((path)arc(EL, 210, 45, fromCenter));
circle C=circle(A,2);
dot((path)arc(C, 210, 45));
