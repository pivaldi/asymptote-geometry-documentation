import geometry; size(10cm,0);
triangle t=triangleabc(5,6,7);
label(t); draw(t, linewidth(bp));
point P=0.5*t.B+0.3*t.C;
dot("$P$", P, 2*dir(60));

triangle Pt=pedal(t,P);
currentpen=0.8*blue; draw(Pt);
segment psA=segment(P,Pt.A);
segment psB=segment(P,Pt.B);
segment psC=segment(P,Pt.C);
draw(psA); draw(psB); draw(psC);
perpendicularmark(t.BC,psA);
perpendicularmark(t.CA,psB);
perpendicularmark(t.AB,psC);

triangle APt=antipedal(t, P);
currentpen=0.8*red; draw(APt);
segment apsA=segment(P,t.A);
segment apsB=segment(P,t.B);
segment apsC=segment(P,t.C);
draw(apsA); draw(apsB); draw(apsC);
perpendicularmark(APt.BC,apsA);
perpendicularmark(APt.CA,apsB);
perpendicularmark(APt.AB,apsC);
