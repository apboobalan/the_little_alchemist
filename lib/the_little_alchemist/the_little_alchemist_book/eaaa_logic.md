We have already seen some logic performed in the form of pattern matching using parameters passed to functions. Performing some operation based on pattern matching in function heads.  
We can perform logics using case, cond and guard clauses.  
We will write list_sum function using these mechanisms.
```elixir
def list_sum(list, acc) do
    case list do
        [] -> acc
        [head | tail] -> list_sum(tail, acc + head)
    end
end
```
```elixir
def list_sum(list, acc) do
    cond do
        list == [] -> acc
        true -> 
            [head | tail] = list
            list_sum(tail, acc + head)
    end
end
```
```elixir
def list_sum(list, acc) when list == [] do
    acc
end
def list_sum([head | tail], acc) do
    list_sum(tail, acc + acc)
end
```
Let's dive deep into each mechanism.