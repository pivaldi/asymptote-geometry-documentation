    import geometry;
    size(5cm);

    circle cle=circle((2,1),1.5);
    draw(cle, linewidth(bp));
    dot("$C$", cle.C);

    vector v=(-1,-2);
    show("$\vec{v}$",v);

    line tgt=tangent(cle,v);
    draw(tgt, bp+0.8*red);
    draw("$\vec{v'}$",cle.C--(cle.C+tgt.v), Arrow);
    dot(point(cle,v));
