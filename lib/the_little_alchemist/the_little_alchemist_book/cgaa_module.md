 So far we have used iex to play with simple expressions. Now we need a Module or file to play with complex concepts.  
Lets create an elixir project.
In the terminal execute `mix new playground`  
- This will create a file called playground.ex inside playground/lib/  
- Note that this file has 
```elixir
defmodule Playground do
    def hello() do
        :world
    end
end
```
`defmodule` defines a new module followed by name of the module which starts with an upper case. Between `do` and `end` we define functions.
- Execute `iex -S mix` inside playground folder. It will open iex with this project's context.
- Here execute `Playground.hello()` inside iex.  
If we get `:world` we successfully created elixir project.
