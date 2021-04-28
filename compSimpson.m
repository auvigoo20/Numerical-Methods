## Author: Auvigoo Ahmed <auvigoo20@Auvigoos-MacBook-Air.local>
## Created: 2021-03-25

function retval = compSimpson (intervals)

   f = @(x) x.^x;
  
  %start interval
  a = 0;
  
  %end interval
  b = 1;
  
  %number of sub-intervals
  m = intervals;
  
  h = (b-a)/ (2*m);
  
  x1 = linspace(a+h, b-h, m);
  x2 = linspace(a+2*h, b-2*h, m-1);
  
  I = h/3*( f(a) + f(b) + 4*sum(f(x1)) + 2*sum(f(x2)));
  
  retval = I;

  
  

endfunction
