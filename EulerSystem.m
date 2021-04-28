%ALWAYS use the file f.m to define the system of equations% yo is a vector of the initial conditions ex: [0,1]function [t, w] = EulerSystem(to, yo, h, n)  w = [yo];  t = [to];    for i = 1: n    w = [w; w(i,:) + h*f(t(i), w(i,:))];    t = [t; t(i)+h];  endfor  
endfunction
