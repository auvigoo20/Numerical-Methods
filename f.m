%This function is to define the following system of ODEs%We have to dependent variables y1 y2%dy1/dx = -0.5*y1               =f1(x,y1,y2)%dy2/dx = 4 - 0.3*y2 - 0.1*y1 =f2(x,y1,y2)%Initial conditions:%y1(0) = 4%y2(0) = 6%y is a vector of initial conditions: ex [4 6]%function [f] = f(x, y)% f(1) = -0.5*y(1);%  f(2) = 4-0.3*y(2) - 0.1*y(1);
%endfunction%-------------------------------------------------------------------------------------------------%This function is to define the following system of ODEs%We have to dependent variables y1 y2%dy1/dt = y2               =f1(t,y1,y2)%dy2/dt = -0.6y2 - 8y1   =f2(t,y1,y2)%Initial conditions:%y1(0) = 4%y2(0) = 0function [f] = f(t, y)  f(1) = y(2);  f(2) = t.*log(t) + (2./t).*y(2) - (2./(t.^2)).*y(1);   endfunction  
