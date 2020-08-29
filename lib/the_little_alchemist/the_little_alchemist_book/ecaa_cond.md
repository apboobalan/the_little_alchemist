`cond` is similar to case, but it doesn't take a variable to match against. `cond` takes many conditions and returns the first path which becomes true
```elixir
def cond_example(variable) do
    cond do
        variable == 1 -> "number one given"
        variable == :a -> "atom a given"
        variable == "a" -> "string a given"
        true -> "Match not found"
    end
end
```
Here when we call the function with 1, first condition becomes true and hence first path is selected.  
Similarly for the other scenarios, when appropriate value is passed the matching condition is executed.  
> Note that we gave `true` as the last condition. If nothing becomes true then `cond` would throw error. In order to have a default condition, we need to add `true` as last condition.