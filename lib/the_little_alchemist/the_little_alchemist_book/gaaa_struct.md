We missed one important datatype of Elixir. But we have seen his sibling, map. It's called struct.  
Structs are named maps. Let's see some examples.  
- Structs are defined inside module.
- We refer them using module name. Hence a module can contain only one struct.
```elixir
defmodule Playground do
    defstruct player_name: nil, age: nil
end
```
`player_name` and `age` are keys and nil is their default value.  
We can create struct by using syntax `%Playground{player_name: "alchemist 1", age: 30}`  
We just placed Module name inbetween `%` and `{`  
> one more important thing about struct is, it can only contain atom keys. And we cannot add new keys other than we defined in `defstruct`.  

Structs can also be used in pattern matching and its usage is similar to maps.