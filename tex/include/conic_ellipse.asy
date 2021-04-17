import geometry;
size(10cm);
point F=(-1,0); line D=line(N,S);
conic co=conic(F, D, 0.85); dot("$F$", F); draw(co, linewidth(bp));

ellipse el=(ellipse)co; dot("$C$", el.C, S);
distance(format("$2c=%f$", el.c),el.F1, el.F2, 3cm, joinpen=dashed);
distance(format("$2a=%f$", el.a), relpoint(el,0), relpoint(el,0.5), 3cm,
         joinpen=dashed);
distance(format("$2b=%f$", el.b), relpoint(el,0.25), relpoint(el,0.75), 5.25cm,
         joinpen=dashed);
dot("$F'$", el.F2, W);
