### Did you catch the difference between the functions?
The first(2 pages back) `sum_of_integers` calls the same function without any operation at the end. We just call `sum_of_integer`.

But the next function(previous page) calls the same function with some operation of `+`(`n + sum_of_integer(n-1)`). We are having a task remaining. So  if we keep some operation remaining, the pending operation is kept in memory before the function value is deduced.

`Tail call optimization` is happened in the first scenario.  
When the last part (tail) of function is simply a function call, the new function is called without storing anything in memory.