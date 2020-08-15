Till now we use iex to play with simple expressions. We need Module or file to play with complex concepts.  
Lets create an elixir project.(I will explain inner workings later.)  
In the terminal execute `mix new playground`  
- This will create a file called playground.ex inside playground/lib/  
- Note that this file has 
```elixir
defmodule Playground do
 # functions.
end
```
`defmodule` defines a new module followed by name of the module which starts with an upper case. Between `do` and `end` we define functions.
- Execute `iex -S mix` inside playground folder. It will open iex with this project's context.
- Here execute `Playground.hello`.  
If we get `:world` we successfully created elixir project and executed out first code inside a function, which in turn inside a module.
