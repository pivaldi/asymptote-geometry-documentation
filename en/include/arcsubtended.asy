    import geometry; size(7cm,0);
    point A=(-1,0), B=(1,0);
    dot("$A$", A, 2W, red); dot("$B$", B, 2E, red);

    real[] angles=new real[] {60, 110, -60, -110};
    pen[] p=new pen[] {red, blue+red, blue, cyan};
    int i=0;

    for(real a:angles) {
      arc arcsubtended=arcsubtended(A,B,a);
      draw(arcsubtended, bp+0.8*p[i]);
      for (int j=0; j < 2; ++j) {
        point M=relpoint(arcsubtended, 0.25+0.5*j);
        draw(A--M--B, 0.8*p[i]);
        real gle=degrees(B-M)-degrees(A-M);
        markangle(Label(format("%0g",-gle),UnFill),
        B, M, A, radius=sgn(-gle)*30, Arrow, 0.8*p[i]); }
      ++i; }
