What if we execute `Playground.user(100)`?  
We would get an error of no function clause matching the given criteria.  
We can solve this by introducing another function with the same name which would match all other values.
```elixir
def user(other) do
    "Unknown user data.#{other}"
end
```
> Note that we should declare this function below the previous functions. This is because elixir starts searching for match from the top. So if we have the function above previous functions, this would be matched by default all the time.
