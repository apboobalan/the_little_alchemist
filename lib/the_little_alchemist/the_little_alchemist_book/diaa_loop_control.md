At some places these kind of infinite loops would help. But most of the times, we would require only limited number of execution.
Eg. Execute a functions 10 times, Execute a functions on all the list of elements in a list.
Here arises the question of how to stop the infinite loop.
Pattern matching comes to the resque here.
```elixir
def loop(10) do
    IO.inspect(10)
end
def loop(i) do
    IO.inspect(i)
    loop(i+1)
end
```
If we call `Playground.loop(1)`. It checks the first function. 1 is not equal to 10, so it checks for the next function with the same name. Ya we have a function. Let's try to matcth. It matched with i. Now 1 is printed. Then again loop is called with 2. This continues till `loop(10)` is called. Now loop(10) matches and enters the functions. Now `10` is printed and no further operations are there to continue. Hence the loop stops.