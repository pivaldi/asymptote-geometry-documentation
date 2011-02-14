    import geometry; size(10cm,0);
    triangle t=triangleabc(5,6,7); label(t); draw(t, linewidth(bp));
    point P=0.6*t.B+0.25*t.C; dot("$P$", P, dir(60), 0.8*red);
    triangle C1=cevian(t, P);
    label("$A'$","$B'$","$C'$", C1, 0.8*red); draw(C1, bp+0.8*red, dot);
    draw(t.A--C1.A, 0.8*red); draw(t.B--C1.B, 0.8*red); draw(t.C--C1.C, 0.8*red);

    point Ma=midpoint(t.BC), Mb=midpoint(t.AC), Mc=midpoint(t.BA);
    dot("$M_1$",Ma,-dir(t.VA)); dot("$M_2$",Mb,-dir(t.VB)); dot("$M_3$",Mc,-dir(t.VC));
    draw(t.A--Ma^^t.B--Mb^^t.C--Mc, grey); dot("$G$", centroid(t), 2*dir(-65), grey);

    point App=rotate(180,Ma)*C1.A, Bpp=rotate(180,Mb)*C1.B, Cpp=rotate(180,Mc)*C1.C;
    draw(C1.A--App, 0.8*green, StickIntervalMarker(2,1,0.8*green));
    draw(C1.B--Bpp, 0.8*green, StickIntervalMarker(2,2,0.8*green));
    draw(C1.C--Cpp, 0.8*green, StickIntervalMarker(2,3,0.8*green));

    triangle C2=triangle(App,Bpp,Cpp);
    label("$A''$","$B''$","$C''$", C2, 0.8*blue); draw(C2, bp+0.8*blue, dot);
    segment sA=segment(t.A,C2.A), sB=segment(t.B,C2.B);
    point PP=intersectionpoint(sA,sB);
    dot("$P'$", PP, dir(100), 0.8*blue);
    draw(sA, 0.8*blue); draw(sB, 0.8*blue); draw(segment(t.C,C2.C), 0.8*blue);
