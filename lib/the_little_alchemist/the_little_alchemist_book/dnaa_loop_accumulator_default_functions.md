Since we always call the function with accumlator 0 all the time. we can have a default function as shown below.
```elixir
def sum_list([], acc) do
    acc
end
def sum_list([head | tail], acc) do
    sum_list(tail, acc)
end
def sum_list(list) do
    sum_list(list, 0)
end
```
You might get confused now because we have 3 functions with the same name. But the subtle difference is sum_list(arg1, arg2) with 2 parameters is different from sum_list(arg1) with one parameter. Here also pattern matching comes into play. When we call `Playground.sum_list([1,2,3])`, note that we call the function with one argument. But first sum_list takes 2 parameters. So first function is not mathced. Next function also takes 2 parameters and hence not matched. Finally third function takes single parameter and hence matched. What we are doing here is we just call another sum_list with same list, accumulator as zero. This is one shortcut followed in elixir.  
Instead of calling the function with zero every time, we delegate that work to another function which defines accumulator as zero and calls the function on behalf of us.