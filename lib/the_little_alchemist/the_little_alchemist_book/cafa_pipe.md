Another pipe example.
```elixir
inc_by = fn (value, increment_value) ->
    value + increment_value
end
```
> 1 |> inc_by.(4) |> inc_by.(5) will give 10.

- first 1 is passed as first argument. inc_by.(1,4) -> 5
- next after first funciton execution 5 is passed as first parameter to next function . inc_by.(5, 5) -> 10

> we used to write inc_by.(inc_by.(1, 4), 5)

Which is little bit confusing when compared to piped style.