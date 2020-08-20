It's time to know about pin operator, which is used as `^` before a vairable. It keeps the value of the variable at the time of matching, with out reassigning. Let's see an example.  
```elixir
a = "a random value of a"
a = 5
```
finaly the value of a would be 5.
```elixir
a = 5
^a = 5
^a = "any other value other than 5"
```
the third statement would throw a MatchError.  
What is happening here is, we are trying to pattern match a variable with value. For this to happen we should already define the value of a, which we are doing in the first statement. Let's see it's usage next.