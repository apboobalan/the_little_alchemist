In addition we have `<>` for strings, ``[|]`` for lists and ``%{map | key: value}`` for manipulating maps.
- `"Hello"<>"Alchemist"` will join strings and give `"HelloAlchemist"`
- [|]  
    `head = "Alchemist 1"`  
    `tail = ["Alchemist 2", "Alchemist 3"]`  
    `[head | tail]` will give `["Alchemist 1", "Alchemist 2", "Alchemist 3"]`
    > note that head is a simple type and tail is a list.
- map  
    `weather = %{temperature: 20}`  
    `%{weather | temperature: 24}` will update temperature `%{temperature: 24}`    
    > we can use this on existing keys only.