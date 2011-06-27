import geometry;

size(5cm);

currentcoordsys=cartesiansystem(i=(1,0.5),j=(-0.25,.75));
show(currentcoordsys);

triangle t=triangleAbc(-60,2,3,angle=45,(1,1));
show(Lb="2", Lc="3",t);
markangle("$60^\circ$",t.C,t.A,t.B, Arrow);
