**Guard clauses** are extra feature to function pattern matching.
```elixir
def whats_its_type(variable) when is_integer(variable) do
    "It's an integer"
end
def whats_its_type(variable) when is_float(variable) do
    "It's float"
end
def whats_its_type(variable) do
    "Type other than integer or float"
end
```
Guard clauses are added after `when` keyword.  
Only certain conditions are allowed here.  
We cannot use any arbitrary functions as conditions here.  

We can use following in guard clauses
- ==, !=, ===, !==, <, >, <=, >=  
- +, -, *, /  
- or, and, not  
- `is_atom, is_boolean, is_float, is_function, is_integer, is_list, is_map`, etc  

There are some other helper functions provided by Elixir. We can use them according to the needs.
