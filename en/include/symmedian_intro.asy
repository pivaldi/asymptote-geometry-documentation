import geometry_dev; size(17cm);
triangle t=triangle((-2,0), (2,0), (-0.5,1));
draw(t, linewidth(2*bp));
circle ct=circle(t); clipdraw(ct, bp+grey);

triangle itr=tangential(t);
drawline(itr, bp+0.8*red); dot(itr, 0.8*red);
line syma=line(itr.A,t.A), symb=line(itr.B,t.B);
line symc=line(itr.C,t.C); draw(syma^^symb^^symc, linewidth(bp));
dot("$K$", intersectionpoint(syma,symb), 2*dir(-120));

draw(line(ct.C,t.A,false), grey);
perpendicularmark(line(ct.C,t.A),itr.BC,quarter=2, grey);
draw(line(ct.C,t.B,false), grey);
perpendicularmark(line(ct.C,t.B),itr.AC,quarter=3, grey);
draw(line(ct.C,t.C,false), grey);
perpendicularmark(line(ct.C,t.C),itr.AB,quarter=3, grey);

triangle st=symmedial(t); draw(st, bp+0.8green);

line mA=median(t.VA); draw(mA, bp+0.8*blue);
dot("$M_A$",midpoint(t.BC), N, 0.8*blue);
draw(segment(t.BC), bp+0.8*blue, StickIntervalMarker(2,2,0.8*blue));

line bA=bisector(t.VA); draw(bA, grey);
dot("$B_A$", bisectorpoint(t.BC), N);

line sA=symmedian(t.VA); draw(sA, 0.8*green);

draw(symmedian(t.VB), 0.8*green); draw(symmedian(t.VC), 0.8*green);

point sP=symmedian(t); dot(sP);

markangle(sA, t.AC, radius=3.5cm, grey, StickIntervalMarker(1,1,grey));
markangle(t.AB, mA, radius=3.5cm, grey, StickIntervalMarker(1,1,grey));
markangle(sA, mA, dir(-10), radius=4cm, grey, StickIntervalMarker(2,2,grey));

label("$A$",t.A,NW); label("$B$",t.B,NE); label("$C$",t.C,2*dir(115));
label("$T_A$",itr.A,4*dir(itr.VA)); label("$T_B$",itr.B,4*dir(itr.VB)); label("$T_C$",itr.C,2*I*dir(itr.VC));
label("$A'$", "$B'$", "$C'$", st, 45, 3, 0.8green);

addMargins(1cm,2cm,1cm,1cm);
shipout(format="pdf",bbox(Fill(rgb(0.96,1,0.95))));
