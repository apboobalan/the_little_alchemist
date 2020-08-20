To get confortable, let's see another example. Let's find sum of integers.

```elixir
def sum_of_integers(0, accumulator) do
    accumulator
end
def sum_of_integers(n, accumulator) do
    sum_of_integers(n - 1, accumulator + n)
end
```
When we call `Playground.sum_of_integers(5, 0)`, first function will be skipped because 0 doesn't match 5.Next function is matched n = 5. Now again same function is called with n-1. accumulator accumulates the value on each round.  
Why we need accumulator?  
Accumulator is needed because n is decremented on each round and we need a place to store the addition.  
When n reaches 0. First functions is matched and hence accumulator is returned.