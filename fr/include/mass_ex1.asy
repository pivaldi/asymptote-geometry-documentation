  import geometry;
  size(4cm,0);
  mass A=mass((1,0), 3);
  mass B=mass((0,1), sqrt(3));
  point C=(0.25,0); // C hérite d'un poids de 1 par défaut.

  dot("B", B, N); dot("C", C, S); dot("A", A, S);
  draw(A--B--C--cycle, linewidth(bp));
  dot("G", masscenter(A,B,mass(C)), 2NE);
