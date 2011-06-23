  point isotomicconjugate(triangle t, point M)
  {
    trilinear tr=trilinear(t,M);
    return point(trilinear(t,1/(t.a()^2*tr.a),1/(t.b()^2*tr.b),1/(t.c()^2*tr.c)));
  }
