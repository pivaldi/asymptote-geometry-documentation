import geometry; size(6cm,0);
point C=(0,0); dot(C);
ellipse el=circle(C,2); draw(el, grey);
arc AE=arc(el, 45, 180, fromCenter);

draw(AE, linewidth(bp), Arrow(3mm));
draw(scale(0.5,C)*AE, bp+0.8red, Arrow(3mm));
draw(scale(-0.5,C)*AE, bp+0.8blue,Arrow(3mm));
draw(scale(1.1,C)*AE, bp+0.8*yellow, Arrow(3mm));

transform t=scale(-0.5,Ox(), Oy());
draw(t*AE, bp+0.8(red+blue), Arrow(3mm));
