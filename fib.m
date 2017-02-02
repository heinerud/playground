function out = fib(n)
    if n > 1
       out = fib(n-1) + fib(n-2); 
    else
        out = n;
    end
end