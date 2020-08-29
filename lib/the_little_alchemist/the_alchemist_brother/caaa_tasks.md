### Tasks
**Task** module helps us to perform a task asynchronously.  
Eg. Consider a scenario where we want to get weather data of three separate places from an api. We can send request for first place, wait for result, after getting result, then send next request and wait for it and so on. If each request takes 10 seconds we would replay back after 30 seconds. If we want to get result for 6 requests then it would take a minute. What if we could send request paralelly. That would reduce to waiting time to 10 seconds irrespective of the number of places.

```elixir
defmodule Task do
    def async(function) do
        self = self()
        spawn(fn -> self |> send(function.()) end)
    end
    def await do
        receive do
            result -> result
        end
    end
end
```