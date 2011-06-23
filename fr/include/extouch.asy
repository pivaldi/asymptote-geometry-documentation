    import geometry; size(6cm,0);

    triangle t=triangle((-1,0), (2,0), (0,2));
    drawline(t, linewidth(bp));
    label(t,alignFactor=4);

    circle c1=excircle(t.AB), c2=excircle(t.BC);
    circle c3=excircle(t.AC);
    clipdraw(c1, bp+0.8green);
    clipdraw(c2, bp+0.8green);
    clipdraw(c3, bp+0.8green);
    dot(c1.C^^c2.C^^c3.C, green);
    draw(extouch(t), bp+0.8green, dot);
