## Author: Auvigoo Ahmed <auvigoo20@Auvigoos-MacBook-Air.local>
## Created: 2021-01-24

%This function will compute the value of xi after i iterations. Doesn't stop after a certain tolerance.
%Ex: Solve the equation 𝑥3−7=0 using the bisection algorithm starting with 𝑎0=1 and 𝑏0=2.
%Conduct three iterations (i.e. find 𝑥3) and report the approximation of the root computed by the algorithm. Use as many digits as possible.

function retval = bissection (iterations)

%enter the function here
  f = @(x) 2.1*x.^4 + 10.3*x.^3 + 5.6*x.^2 + 10.3*x +3.5;
 
%a0 and b0 
  a=-1;
  b=0;
  
  x = (a+b) / 2;
  printf("value of x at iteration 0 is: %d\n", x);
  printf("--------------\n");

  
  i = 1;
  while(i <= iterations)
    if f(a)*f(x) < 0
      b = x;
    endif
    if f(a)*f(x) > 0
      a = x;
    endif
    
    x = (a+b) / 2;
    printf("value of x at iteration %d is: %d\n", i,x);
    disp(x);
    printf("error is: %d\n", (b-a)/2);
    printf("--------------\n");
    
    i = i + 1;
  
endwhile

retval = x;


endfunction
