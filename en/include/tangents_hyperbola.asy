    import geometry; size(10cm,0);
    draw(box((-5,-3),(5,3)), invisible);
    hyperbola h=hyperbola(origin,1.5,1);
    draw(h, linewidth(bp));

    for (int i=0; i < 360; i +=45 ) {
      point M=(1.5*Cos(i), Sin(i));
      dot(M); draw(tangents(h,M)); }
    draw(ellipse(origin,1.5,1), grey);
