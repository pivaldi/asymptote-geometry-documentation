    import geometry; size(10cm,0);
    triangle t=triangleabc(5,6,7); label(t); draw(t, linewidth(bp));
    point P=0.6*t.B+0.25*t.C; dot("$P$", P, dir(60), 0.8*red);
    draw(segment(isotomic(t.VA,P))^^segment(isotomic(t.VB,P))^^segment(isotomic(t.VC,P)),
    0.8*blue);
    draw(segment(cevian(t.VA,P))^^segment(cevian(t.VB,P))^^segment(cevian(t.VC,P)),
    0.8*red);
    triangle t1=cevian(t,P); label("$P_1$", "$P_2$", "$P_3$", t1); draw(t1, bp+0.8*red);
    triangle t2=isotomic(t,P); label("$Q_1$", "$Q_2$", "$Q_3$", t2); draw(t2, bp+0.8*blue);
    dot("$Q$", isotomicconjugate(t,P), dir(100), 0.8*blue);

    point Ma=midpoint(t.BC), Mb=midpoint(t.AC), Mc=midpoint(t.BA);
    dot("$M_1$",Ma,-dir(t.VA)); dot("$M_2$",Mb,-dir(t.VB)); dot("$M_3$",Mc,-dir(t.VC));
    draw(t.A--Ma^^t.B--Mb^^t.C--Mc, grey); dot("$G$", centroid(t), 2*dir(-65), grey);
    draw(t1.A--t2.A, 0.8*green, StickIntervalMarker(2,1,0.8*green));
    draw(t1.B--t2.B, 0.8*green, StickIntervalMarker(2,2,0.8*green));
    draw(t1.C--t2.C, 0.8*green, StickIntervalMarker(2,3,0.8*green));
