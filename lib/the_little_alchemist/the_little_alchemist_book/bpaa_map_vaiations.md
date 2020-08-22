- `%{"temperature" => 24.5}` with string key and float value.  
- `%{{1, 2} => :origin}` with tuple key and atom as value.  
Of all these combinations we use atom as key and other types as values often.  
When we use **atoms** as keys, we have a special form.  
- `weather = %{temperature: 24.5, description: "partly cloudy"}`  
- `weather.temperature` will give 24.5  
We can remove `=>`  and `:temperature` can be used as `temperature:` instead.

`%{:temperature => 24.5}` would become `%{temperature: 24.5}`