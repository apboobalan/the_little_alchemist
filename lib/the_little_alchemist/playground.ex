defmodule TheLittleAlchemist.Playground do
defstruct name: nil, age: 0
    defguard is_equal_to(a, b) when a == b

    def equal?(a,b) when a |> is_equal_to(b), do: true
    def equal?(_, _), do: false
end

defprotocol Play do
    def type(value)
    def print(value)
end

defimpl Play, for: TheLittleAlchemist.Playground do
    def type(_value), do: :playground
    def print(value), do: "#{value.name} at #{value.age}"
end

defimpl Play, for: Integer do
    def type(_value), do: :integer
    def print(value), do: "integer value is #{value}"
end
