import geometry; size(6cm);

point F=(1,-1.5); dot("$F$",F,N,red);
parabola p=parabola(F,0.2,110); draw(p);

dot("0",curpoint(p,0),SE);
dot("0.5",curpoint(p,0.5));
dot("-0.5",curpoint(p,-0.5),SW);
dot("-2",curpoint(p,-2),SW);
dot("2",curpoint(p,2),E);
