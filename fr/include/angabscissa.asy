    import geometry;
    size(6cm);
    abscissa x=angabscissa(30);

    ellipse el=ellipse(origin(),2,1,45);
    draw(el,linewidth(bp));

    point M=point(el,x);
    draw(M--el.F1--el.F2);
    dot("$F_1$", el.F1, SE); dot("$F_2$", el.F2, NW);
    markangle((string)x.x, el.F2, el.F1, M);
    draw(tangent(el,x), linewidth(bp));
