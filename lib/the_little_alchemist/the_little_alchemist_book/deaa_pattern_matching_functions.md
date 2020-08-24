Let's define two functions  
```elixir
defmodule Playground do
    def say(true) do
       "You told a truth."
    end
    def say(false) do
       "You told a lie."
    end
end
```
In iex  
`Playground.say(true)` will return "You told a truth."  
`Playground.say(false)` will return "You told a lie."
 
This happens because Elixir doesn't run the function mentioned.  
It tries to match which function matches the given criteria and then executes that function. Let's see more.