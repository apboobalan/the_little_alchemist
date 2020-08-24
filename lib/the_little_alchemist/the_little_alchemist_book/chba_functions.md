### Functions again? yes now we are going to see how we can define functions inside modules.  
we might have already seen while setting up module.
```elixir
def function_name(arg1, arg2) do
# expressions here.
end
```
Key parts are,  
- `def` to state that we are going to define a function.  
- `function_name` which should start with lower case and snake cased.
- Which takes `arg1`, `arg2` as arguments.
- Then `do` to inform that, we are going to implement function now.  
- Finally `end` to tell that the function ends here.

Accidentally we are introduced to `#`, which represents a comment, which makes the elixir system to ignore the line.