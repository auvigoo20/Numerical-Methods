function [t,w] = RK2_trap(to, yo, h, n)  %enter function here:  func = @(t,y) 1/2 + (y.^2)/2;      w = [yo];    t = [to];        for i=1:n      k1 = func(t(i), w(i));      k2 = func(t(i)+h, w(i)+k1*h);      w = [w; w(i)+h/2*(k1+k2)];      t = [t; t(i)+h];      endfor      
endfunction
