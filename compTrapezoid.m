## Author: Auvigoo Ahmed <auvigoo20@Auvigoos-MacBook-Air.local>
## Created: 2021-03-25
## MAKE SURE TO ADD A DOT (.) BEFORE ALL OPERATIONS EX( * / ^)

function retval = compTrapezoid (intervals)
  
  f = @(x) cos(e.^x);
  
  %start interval
  a = 0;
  
  %end interval
  b = pi;
  
  %number of sub-intervals
  m = intervals;
  
  x = linspace(a, b, m+1);
  
  h = (b-a)/m;
  
  I = h/2*(2*sum(f(x)) - f(a) - f(b));
  
  retval = I;

endfunction
