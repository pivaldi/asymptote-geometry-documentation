import geometry; size(12cm,0); draw(Ox()^^Oy()); real a=3, b=2;
circle C=circle(origin,a), Cp=circle(origin,b);
draw(C, 0.8*blue); draw(Cp, 0.8*green);

transform T=scale(b/a,Ox(),Oy()), Tp=scale(a/b,Oy(),Ox());
ellipse e=T*C; draw(e, bp+0.8*red);

point H=(a/2,0), Hp=(0,-b/2); dot("$H$", H, S); dot("$H'$", Hp);
line L=line(H,false,H+N), Lp=line(Hp,false,Hp+W);
point M=intersectionpoints(L,C)[0], NN=intersectionpoints(Lp,Cp)[0];
point Mp=T*M, NNp=Tp*NN; L=segment(H,M); Lp=segment(Hp,NNp);
dot("$M$", M, NE); dot("$M'$", Mp, NE); dot("$N$", NN, SW); dot("$N'$", NNp, NE);
draw(L, dashed); draw(Lp, dashed);

segment SS=segment(origin,M), SSp=segment(origin,NN);
draw(SS, 0.8*blue); draw(SSp, 0.8*green);

line tgM=tangents(C, M)[0]; point P=intersectionpoint(tgM,Ox());
draw(tgM, 0.8*blue); dot("$P$", P, dir(60));

line tgN=tangents(Cp, NN)[0]; point Pp=intersectionpoint(tgN,Oy());
draw(tgN, 0.8*green); dot("$P'$", Pp, dir(30));

perpendicularmark(tgM,SS, 0.8*blue); perpendicularmark(tgN,SSp, quarter=2, 0.8*green);

line tgMp=line(P, Mp), tgNp=line(Pp, NNp);
draw(tgMp, 0.8*red); draw(tgNp, 0.8*red);

draw(Mp+2tgMp.u--Mp-2tgMp.u, bp+0.8*red, Arrows(3mm));
draw(NNp+2tgNp.u--NNp-2tgNp.u, bp+0.8*red, Arrows(3mm));
addMargins(5mm,5mm);
