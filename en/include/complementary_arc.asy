    import geometry;
    size(6cm,0);
    ellipse EL=ellipse(origin,2,1);
    arc AE=arc(EL, 210, 45, fromCenter);
    draw(AE, linewidth(bp), Arrow(3mm));
    draw(complementary(AE), bp+0.8*red, Arrow(3mm));
