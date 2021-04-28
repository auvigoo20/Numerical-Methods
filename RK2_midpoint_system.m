%ALWAYS use the file f.m to define the system of equations% yo is a vector of the initial conditions ex: [0,1]function [t, w] = RK2_midpoint_system(to, yo, h, n)    w = [yo];  t = [to];    for i=1 : n    k1 = f(t(i), w(i, :));    k2 = f( t(i)+h/2, w(i, :)+h/2*k1);    w = [w; w(i, :) + h*k2];    t = [t; t(i) + h];  endfor
endfunction
