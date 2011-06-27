import geometry;
size(10cm,0);
pen bpp=linewidth(bp);
line l=line(origin,(1,-0.25)); draw("$(d)$", l, bpp);
point A=(1,1.5), B=(0.75,2.5);
line AB=line(A,B);
point B1=reflect(l)*B, I=intersectionpoint(l,AB), B2=rotate(180,I)*B;
dot("$I$", I, NE); dot("$B_1$", B1, SW); dot("$B_2$", B2, SE);

draw(B--B1, grey+dashed, StickIntervalMarker(2,2,grey));
markrightangle(B,midpoint(B--B1),I, grey);
draw(B--B2, grey+dashed, StickIntervalMarker(2,1,grey));
draw(complementary(segment(B,B2)));

circle C=circle(A,B1,B2); draw(C, 0.8*blue);
point[] T=intersectionpoints(l,C);
dot("$T_0$",T[0], NE); dot("$T_1$",T[1], N+NW);

circle C1=circle(A,B,T[0]), C2=circle(A,B,T[1]);
clipdraw(C1, bpp+0.8*red); clipdraw(C2, bpp+0.8*red);
dot("$O_1$", C1.C, W); dot("$O_2$", C2.C, SW); dot("$A$", A, NE); dot("$B$", B, NE);

draw(A--T[0]--B1, grey); markangle(A,T[0],B1, grey);
draw(A--T[1]--B1, grey); markangle(B1,T[1],A, grey);
draw(B2--B1, grey); markangle(A,B2,B1, grey);
