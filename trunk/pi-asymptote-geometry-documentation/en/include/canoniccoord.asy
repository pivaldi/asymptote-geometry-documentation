    import geometry;
    size(4cm,0);

    show(defaultcoordsys);
    ellipse el=ellipse((2,4),3,2,45);
    dot("$F_1$", el.F1, dir(-45));
    dot("$F_2$", el.F2, dir(-45));
    draw(el, linewidth(bp), Arrow(3mm));
    show("$C$", "$\vec{u}$" ,"$\vec{v}$",
    canonicalcartesiansystem(el));
