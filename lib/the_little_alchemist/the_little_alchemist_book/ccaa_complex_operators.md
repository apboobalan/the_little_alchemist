In addition we have <>, [|], %{map | key: value} as operators to manipulate strings, lists and maps.
- `"Hello"<>"Alchemist"` will join strings and give `"HelloAlchemist"`
- [|]  
    `head = "Alchemist 1"`  
    `tail = ["Alchemist 2", "Alchemist 3"]`  
    `[head | tail]` will give `["Alchemist 1", "Alchemist 2", "Alchemist 3"]`
    > note that head is a simple type and tail is a list.
- map  
    `weather = %{temperature: 20}`  
    `%{weather | temperature: 24} -> %{temperature: 24}`  
    Here we updated temperature with new value.  
    > we can use this on existing keys only.