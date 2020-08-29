We can write **functions** and **if else** in short form.
```elixir
def function_name(args) do
    :return_value
end
```
can be written as,  
`def function_name(args), do: :return_value`  
Note `,` after `)` and `:` after `do` and removal of `end`  

```elixir
if condition do
    :truthy_value
else
    :falsy_value
end
```
can be written as,  
`if condition, do: :truthy_value, else: :falsy_value`