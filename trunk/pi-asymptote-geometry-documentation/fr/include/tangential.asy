    size(7cm); import geometry;
    triangle t=triangleabc(3,4,6);
    draw(t, linewidth(bp));
    clipdraw(circle(t), linewidth(bp));
    triangle itr=tangential(t);
    drawline(itr, bp+0.8*green); dot(itr, 0.8*red);
    line syma=line(itr.A,t.A), symb=line(itr.B,t.B);
    line symc=line(itr.C,t.C); draw(syma^^symb^^symc);
    dot("$K$", intersectionpoint(syma,symb),
    2*dir(-120));
    label(t,alignFactor=2,UnFill);
    label("$T_A$","$T_B$","$T_C$", itr, alignFactor=4,
    UnFill);
    addMargins(1cm,1cm);
