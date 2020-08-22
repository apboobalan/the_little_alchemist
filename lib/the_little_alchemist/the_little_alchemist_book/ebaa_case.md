`case` is like switch case in other languages. 
```elixir
case (variable or function call) do
    case_1 -> do something.
    case_2 -> do otherthing.
end
```
where case_1 or case_2 are patterns which can match the variable or the result of function call.
```elixir
def case_example(variable) do
    case variable do
        1 -> "number one given"
        :a -> "atom a given"
        "a" -> "string a given"
        {x, y} -> "tuple given"
        %{temperature: temp} -> "weather map given with temperature #{temp}"
        _ -> "Match not found"
    end
end
```
Let's see the results of calling the funciton with different inputs.  
`Playground.case_example(1)` will give back "number one given"  
`Playground.case_example(:a)` will give back "atom a given"  
`Playground.case_example("a")` will give back "string a given"  
`Playground.case_example({1, 2})` will give back "tuple given"  
`Playground.case_example(%{temperature: 25})` will give back "weather map given with temperature 25"  
`Playground.case_example(5)` will give back "Match not found"  
`Playground.case_example(:anything)` will give back "Match not found"  
`Playground.case_example("anything")` will give back "Match not found"  
>We use \_ here. \_ is prepended with a variable, which is not used further. If we want to print the value of unmathced value, then we would write the last condition as `value -> "Match not found for #{value}"`