%Classical fourth order Runge-Kutta Methodfunction [t w] = RK4(to,yo,h,n)    t = [to];  w = [yo];    %Enter function here:  f = @(t,y) y./t - (y./t).^2;    for i=1:n    t =[t; t(i) + h];    k1 = f(t(i), w(i));    k2 = f(t(i)+h/2, w(i)+h/2*k1);    k3 = f(t(i)+h/2, w(i)+h/2*k2);    k4 = f(t(i)+h, w(i)+h*k3);    w =[w; w(i) + h/6*(k1+2*k2+2*k3+k4)];      endfor  
endfunction
