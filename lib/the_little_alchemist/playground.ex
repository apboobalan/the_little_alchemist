defmodule TheLittleAlchemist.Playground do
    def split(from_pid, word) do
        send(from_pid, String.split(word, " "))
    end

    def demo_process() do
        spawn(TheLittleAlchemist.Playground, :split, [self(), "Hello World"])
        receive do
            result -> result
        end
    end
end
