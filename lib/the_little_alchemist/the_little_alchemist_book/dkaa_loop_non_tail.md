We can implement the same function in another way without the use of accumulators. Let's see that. But we should avoid this type because of a catch.
```elixir
def sum_of_integers(0) do
    0
end
def sum_of_integers(n) do
    n + sum_of_integers(n - 1)
end
```
The problem here is we need to keep the function in memory so that the next function is called for its result.
`5 + 4 + 3 + sum_of_integers(2)` till it reaches 0.  

This is not a problem for small numbers. If we give `1_000_000`. It will be expanded to `1_000_000 + 999_999 +999_998 + 999_997 ... 0`. So we need to keep all the numbers in memory. If the memory fills up, the function crashes. So we need to avoid this.