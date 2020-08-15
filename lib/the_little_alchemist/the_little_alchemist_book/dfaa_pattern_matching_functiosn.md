```elixir
def user({:ok, age}) do
    "The age of the user is #{age}"
end
def user({:error, reason}) do
    "Couldn't retrieve the user data. Reason: #{reason}."
end
```
`Playground.user({:ok, 30})` will return "The age of the user is 30"  
`Playground.user({:error, "Invalid id"})` will return "Couldn't retrieve the user data. Reason: Invalid id."