Let's implement the same with list.
Add all list elements [1, 3, 555, 777, 888].
```elixir
def sum_list([], accumulator) do
    accumulator
end
def sum_list([head | tail], accumulator) do
    sum_list(tail, accumulator + head)
end
```
Here when we call the function with empty list `Playground.sum_list([], 0)`, first function is matched, hence we get sum as 0, which is correct.  
If we call  `Playground.sum_list([1, 333, 555, 777, 999], 0)` , first function is not matched as it is not empty. Next function is matched and if you recall this type of mathing results in head being the first element and remaining list being assigned to tail. Now the sum_list is called recursively with tail, being passed to the next round and accumulator being increased by head. Ultimately tail will reach [] empty and first function is matched and hence accumlator which has the sum of heads returned.