### Here comes the 'somewhat' unique concept.

We want to name a concept and want to use it at many places.  
We can say strings.  
But strings are commonly used to **manipulate concepts**, while the next concept(atoms) are used to **name concepts**.
```elixir
name = "Alchemist"  
"Welcome #{name}!"
``` 
outputs `"Welcome Alchemist!"`
> Here name is called 'variable' which we will see later.

_Yes we are interpolating strings. Inserting values into a string_  
`#{}` The expressions inside **{}** will be evaluated and converted to strings and then inserted into the containing string.
