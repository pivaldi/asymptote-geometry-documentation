    import geometry;

    write(massformat(s="foo", mass((0,0),1000)));
    // Return $\left(foo;1000\right)$


    write(massformat("%L\_%e", "foo", mass((0,0),1000)));
    // Return foo\_1\!\times\!10^{3\phantom{+}}

