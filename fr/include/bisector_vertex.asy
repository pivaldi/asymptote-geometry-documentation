  size(7cm); import geometry;
  triangle t=triangleabc(4,5,6);
  drawline(t, linewidth(bp));
  line ba=bisector(t.VA), bb=bisector(t.VB);
  line bc=bisector(t.VC); draw(ba^^bb^^bc);
  markangle(t.AB, t.AC, StickIntervalMarker(2,1));
  markangle(t.BC, t.BA, StickIntervalMarker(2,2));
  markangle(t.CA, t.CB, StickIntervalMarker(2,3));
