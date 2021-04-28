%this function prints the absolute errors of the 10 first iterations using the fixed point algorithm
%ex: We want to apply the fixed point method to solve the equation .
%Choose among the following examples of functions guess specified

## Author: Auvigoo Ahmed <auvigoo20@Auvigoos-MacBook-Air.local>
## Created: 2021-01-24

function fixedpoint (initial)

%enter the function here
  f = @(x) (x+5) ./ (x+1);
  
  i = 0;
  while i <= 30
    nextVal = f(initial);
    errorVal = abs(nextVal - initial);
    printf("value of x at iteration %d is: %d\n", i, initial);
    printf("error at %d iteration is: %d\n", i+1, errorVal);
    printf("---------\n")
    initial = nextVal;
    i = i+1;
  endwhile
  
  



endfunction
