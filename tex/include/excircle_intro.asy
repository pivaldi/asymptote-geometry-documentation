import geometry;
size(6cm,0);

triangle t=triangle((-1,0), (2,0), (0,2));

drawline(t, linewidth(bp));
label(t,alignFactor=4);

clipdraw(excircle(t.AB), bp+0.8green);
clipdraw(excircle(t.BC), bp+0.8green);
clipdraw(excircle(t.AC), bp+0.8green);

draw(box((-2.5,-3), (3.5,3.5)), invisible);
