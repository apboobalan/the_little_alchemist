We can define constants inside modules as Module attributes. There are many module attributes. We are going to see only constant definition. These are to increase readability of code.  
```elixir
defmodule Playground do
    @version 5
    @status [:ready, :dispatch]
    def version do
        @version
    end
    def delivered?(status) when status in @status do
        true
    end
    def delivered?(_status) do
        false
    end
end
```
`Playground.version` will return 5