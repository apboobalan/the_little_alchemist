Since we always call the function with accumlator 0 all the time. we can have another convenience function as shown below.
```elixir
def sum_list(list) do
    sum_list(list, 0)
end
```
- We might get confused now because we have 3 functions with the same name. But the subtle difference is `sum_list(arg1, arg2)` with 2 parameters is different from `sum_list(arg1)` with one parameter. 
- Here also pattern matching comes into play. When we call `Playground.sum_list([1,2,3])`, we call the function with one argument. Both `sum_list([], acc)` and `sum_list([head | tail], acc)` takes 2 parameters, hence they are not matched. 
- Finally `sum_list(list)` takes single parameter and hence matched. In this function we just call `sum_list` with 2 parameter. We just pass `list` as first argument, `accumulator` with `0` as second. This is one shortcut followed in elixir.  
- Instead of calling the function with zero every time, we delegate that work to another function which defines `accumulator` as zero and calls the function on behalf of us.