    import geometry;

    write(massformat(s="foo", mass((0,0),1000)));
    // Renvoie $\left(foo;1000\right)$


    write(massformat("%L\_%e", "foo", mass((0,0),1000)));
    // Renvoie foo\_1\!\times\!10^{3\phantom{+}}

