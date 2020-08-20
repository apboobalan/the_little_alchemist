`with` is added to Elixir to solve the nested case problem.
```elixir
def nested_case(arg) do
    case do_frist_operation(arg) do
        {:ok, result1} -> 
            case do_second_operation(result1) do
                {:ok, result2} -> {:ok, result2}
                {:error, reason2} -> {:error, reason2}
            end
        {:error, reason1} -> {:error, reason1}
    end
end
```
Instead of nesting case, we can add with. What `with` does is it passes when all the correct conditions are satisfied, else it errors and performs the `else` block.
```elixir
def with_example(arg) do
    with {:ok, result1} <- do_first_operation(arg),
         {:ok, result2} <- do_second_operation(result1) do
         {:ok, result2}
    else
        {:error, reason} -> {:error, reason}
    end
end
```
If the pattern from `do_first_operation` or `do_second_operations` doesn't match the given pattern, else block is called. We can just return whatever is passed here or we can pattern match on only error and return that.