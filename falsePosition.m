

## Author: Auvigoo Ahmed <auvigoo20@Auvigoos-MacBook-Air.local>
## Created: 2021-03-09
%This function takes in a parameter of the number of iterations to perform
%It then prints the value of x after each iteration along with the error
function retval = falsePosition (iterations)

%enter the function here
  f = @(x) x^2-3;

%a0 and b0
  a = 1;
  b = 2;
  
%initialization
  if f(a) * f(b) < 0
    approx = (a + b)/2;
    printf("error at iteration 0 is:");
    errorVal = (b-a)/2;
    disp(errorVal);
    disp("-------------")
  endif
  
  
 i = 0;
 while(i <= iterations)

  xc = ((a * f(b)) - (b * f(a)) ) / (f(b) - f(a));
  
  if f(a) * f(xc) < 0
    b = xc;
    approx = (a + b)/2;
    printf("error at iteration %d is:", i+1);
    errorVal = (b-a)/2;
    disp(errorVal);
    printf("value of x at iteration %d is: ", i);
    disp(xc);
    disp("-----------------")
  endif
  
  if f(xc) * f(b) < 0
    a = xc;
    approx = (a + b)/2;
    printf("error at iteration %d is:", i+1);
    errorVal = (b-a)/2;
    disp(errorVal);
    printf("value of x at iteration %d is: ", i);

    disp(xc);
        disp("-----------------")
  endif
  
  i = i+1;
 endwhile
 
 retval = xc;

endfunction
