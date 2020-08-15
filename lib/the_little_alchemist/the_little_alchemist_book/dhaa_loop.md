Another whaaatt!! moment.  
There are no while and for loops in Elixir.  
mmm... Then how can we run same function repeatedly for all elements in a list.  
We can repeatedly call the same function at the end.

```elixir
def say(message) do
    IO.inspect(message)
    say(message)
end
```
Now I accidentally introduced `IO.inspect()` which is used to print message in iex. `IO` is the module name and `inspect` is the function name.

`Playground.say("Hello")` will print Hello infinitely.