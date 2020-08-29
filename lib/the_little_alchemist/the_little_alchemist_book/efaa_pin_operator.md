It's time to know about pin operator, which is used as `^` before a vairable. It keeps the value of the variable at the time of matching, without reassigning. Let's see an example.  
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
What's happening here ?, we are trying to pattern match a variable which has 5 with "any other value other than 5". we already defined the value of a as 5. So it therw MatchError. Let's see it's usage next.