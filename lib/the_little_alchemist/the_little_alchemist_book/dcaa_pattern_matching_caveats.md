### Caveats
`{:ok, value} = {:error, "Invalid argument"}`  
`[a, b] = [1, 2, 3]`  
`{a, b} = {1, 2, 3}`

All these will raise MatchError, Because in first one :ok and :error wont match.  
Length is not matching in other two scenarios.  
But `%{temperature: temp} = %{temperature: 24.5, min: 20, max: 30}` would match and give temp = 24.5  
Because it has the data of temperature.  
But `%{min: min_temp} = %{temperature: 25}` wont match because we don't have enough data to derieve min_temp.

We would wonder why map with different number of key values match if they have a matching key, but list and tuple wont match.  
Thats because there arise an ambiguity of matching [a, b] with [1,2] of [1,2,3] or [2,3] of [1,2,4]