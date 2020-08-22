Let's see an example.
```elixir
def split(from_pid, word) do
    send(from_pid, String.split(word, " "))
end

def demo_process() do
    spawn(Playground, :split, [self(), "Hello World"])
    receive do
        result -> result
    end
end
```
We used `self()`. It gives the address of the current running process. To be clear it gives the address of the demo_prcess(). If we call this method in iex, it takes the pid of iex.  
We might wonder why are we calling spawn and calling the function. We can directly call the function itself right. Here it seems a trivial function. Consider a scenario where the split function takes time. We can spawn multiple process at the same time and they work in parallel and give back us data.