    import geometry; size(10cm); conic co[];
    co[0]=conic((-4.58,1.25), line((-5.45545,1.25), (-5.45545,2.12287)), 0.9165);
    draw(co[0]);
    co[1]=conic((0,-1),line((0,-3.5),(-1,-3.5)),1); draw(co[1]);
    co[2]=conic((-1.2,0), line((-5/6,0),(-5/6,-1)),1.2); draw(co[2]);
    dotfactor *= 2;
    for (int i=0; i < 3; ++i)
    for (int j=i+1; j < 3; ++j)
    dot(intersectionpoints(co[i],co[j]), red);
    addMargins(lmargin=10mm,bmargin=10mm);
