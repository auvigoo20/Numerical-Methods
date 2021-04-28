function [t, w] = Euler(to, yo, h, n)    %enter function here:  func = @(t,y) t.^3 ./ y.^2;    w = [yo];  t = [to];    for i=1:n    w = [w; w(i)+h*func(t(i), w(i))];    t = [t; t(i)+h];  endfor    
endfunction
