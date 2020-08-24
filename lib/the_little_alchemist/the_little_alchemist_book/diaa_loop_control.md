At some places these kind of infinite loops would help.  

But most of the times, we would require only limited number of execution.  
_Eg. Execute a function 10 times, Execute a function on all elements of a list._  

Here arises the question of how to stop the infinite loop.
**Pattern matching** comes to the rescue here.
```elixir
def loop(10) do
    IO.inspect(10)
end
def loop(i) do
    IO.inspect(i)
    loop(i+1)
end
```
- If we call `Playground.loop(1)`, it checks the first function. 1 is not equal to 10.
- so it checks for the next function with the same name. Yes we have a function.  
- It matches with i. Now 1 is printed.
- Then again loop is called with 2. This continues till `loop(9)`.
- Now `loop(10)` matches the first function and enters the functions. Now `10` is printed and no further operations are there to continue. Hence the loop stops.