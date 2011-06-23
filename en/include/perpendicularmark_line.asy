    import geometry;
    size(5cm,0);
    transform t=rotate(135);
    line l1=t*line((0,0),E); line l2=t*line((0,0),N);

    perpfactor *=5.5;
    perpendicularmark(l1,l2, Fill(0.8*green));
    perpendicularmark(l1,l2, quarter=2, Fill(0.8*blue));
    perpendicularmark(l1,l2, quarter=3, Fill(0.8*red));
    perpendicularmark(l1,l2, quarter=4, Fill(0.8*yellow));

    pen bpp=linewidth(bp); position pos=Relative(0.75);
    show(Label("$u_1$",pos), l1.u, bpp, Arrow(3mm));
    show(Label("$u_2$",pos,align=SE), l2.u, bpp, Arrow(3mm));
    show("", -l1.u, invisible); show("", -l2.u, invisible);
