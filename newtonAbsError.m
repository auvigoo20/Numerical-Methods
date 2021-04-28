%This function prints the xi as well as the absolute value using the newton method
## Author: Auvigoo Ahmed <auvigoo20@Auvigoos-MacBook-Air.local>
## Created: 2021-01-24

function newtonAbsError (initial)

  f = @(x) 2.1.*x.^4 +10.3.*x.^3 + 5.6.*x.^2 +10.3.*x + 3.5;
  fprime = @(x) 8.4.*x.^3 + 30.9.*x.^2 + 11.2.*x + 10.3;
   
  i = 0;
  while(i < 10)
    fxi = f(initial);
    fxiprime = fprime(initial);
    xnext = initial - fxi/fxiprime;
    printf("value of x at iteration %d is: %d\n", i, xnext);
    disp(xnext);
    printf("error RELATIVE at iteration %d is: %d\n", i+1, abs((xnext - initial)/xnext));
    printf("--------------\n")
    initial = xnext;
    i = i+1;
    
  
  endwhile




endfunction
