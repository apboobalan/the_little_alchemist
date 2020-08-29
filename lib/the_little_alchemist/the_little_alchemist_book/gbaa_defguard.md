We have seen using guard clauses in functions. To improve readability we have `defguard`
```elixir
defmodule Playground do

    defguard is_equal_to(a, b) when a == b

    def equal(a, b) when a |> is_equal_to(b) do
        true
    end
    def equal(_a, _b) do
        false
    end
end
```
This is just to enhance readability. Another example would be to check `age >= 18`. Instead of just having this condition, we can name it as `defguard is_eligible_to_vote(age) when age >= 18`, which enhances readability.