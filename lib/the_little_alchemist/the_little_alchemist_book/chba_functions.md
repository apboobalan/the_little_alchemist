### Functions again? yes now we are going to see how we can define functions inside modules.  
we might have already seen while setting up module.
```elixir
def function_name(arg1, arg2) do
# expressions here.
end
```
Key parts are `def` to state that we are going to define a function.  
`function_name` which should start with lower case.  
followed by `do` to to inform that we are going to implement function now.  
and finally `end` to tell that the function ends here.  
Now I accidentally introduced '#' which represents a comment, which makes the elixir system to ignore the line.