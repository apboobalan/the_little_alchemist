Other examples
```elixir
    def sum?(a, b, c) when a + b == c or b + c == a or a + c == b do
        "One number is sum of other two numbers"
    end
    def sum?(_a, _b, _c) do
        "Not a sum"
    end
```
```elixir
    def is_even?(number) when rem(number, 2) == 0 do
        true
    end
    def is_even?(number) do
        false
    end
```
Here we accidentally introduced `?` at the end of function name. It doesn't affect anything. It's just convention in Elixir to use question mark at the end of function to denote that function returns either `true` or `false`.