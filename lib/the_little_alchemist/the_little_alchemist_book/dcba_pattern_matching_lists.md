How should a pattern matching work for lists.  
Remember how we created list using [|] operator.  
If forgotten, here it is
```elixir
head = 1
tail = [2, 3]
list = [head | tail]
```
List will have [1, 2, 3]  
Now reverse them to pattern match
```elixir
[head | tail] = list
```
will yield head = 1 and tail = [2, 3]
we can also pattern match like
```elixir
list = [1,2,3,4,5]
[a, b |rest] = list
```
will yield a = 1, b = 2 and rest = [3, 4, 5]