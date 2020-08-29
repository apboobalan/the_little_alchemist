We can define constants inside modules as Module attributes. There are many module attributes. We are going to see only constant definition. These are to increase readability of code.  
```elixir
defmodule Playground do
    @version 5
    @statuses [:ready, :dispatch]
    def version do
        @version
    end
    def delivered(status) when status in @statuses do
        "Not delivered"
    end
    def delivered(_status) do
        "Delivered"
    end
end
```
`Playground.version` will return 5  
`Playground.delivered(:ready)` will return `Not delivered`  
`Playground.delivered(:delivered)` will return `Delivered`