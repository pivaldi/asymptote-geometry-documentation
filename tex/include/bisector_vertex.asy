size(7cm); import geometry;
triangle t=triangleabc(4,5,6);
drawline(t, linewidth(bp));
line ba=bisector(t.VA), bb=bisector(t.VB);
line bc=bisector(t.VC); draw(ba^^bb^^bc);
markangle((line) t.AB, (line) t.AC, StickIntervalMarker(2,1));
markangle((line) t.BC, (line) t.BA, StickIntervalMarker(2,2));
markangle((line) t.CA, (line) t.CB, StickIntervalMarker(2,3));
