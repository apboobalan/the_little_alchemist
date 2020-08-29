Let's say we need to match for a given value in a case statement.
```elixir
def match_for(a, b, c, d) do
    case do_something_with(a, b) do
        ^c -> "Doing something with a and b leads to c."
        ^d -> "Doing something with a and b leads to d."
        _ -> "No match."
    end
end
```
We can do this using cond like
```elixir
def match_for(a, b, c, c) do
    result = do_something_with(a, b)
    cond do
        result == c -> "Doing something with a and b leads to c."
        result == d -> "Doing something with a and b leads to d."
        true -> "No match."
    end
end
```
Because of the power of **pattern mathing** and **pin operator** we can express the same logic shortly and clearly.