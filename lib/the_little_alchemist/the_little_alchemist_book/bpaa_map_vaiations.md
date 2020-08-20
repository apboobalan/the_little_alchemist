- `%{"temperature" => 24.5}` with string key and float value.
- `%{{1, 2} => :origin}` with tuple key and atom as value.
Of all these combinations we would use atom as key and other types as values often.  
Hence we have a special form to create and retrieve value from map, when we use atoms as keys.
- `weather = %{temperature: 24.5, description: "partly cloudy"}`
- weather.temperature will give 24.5  
we switch : from front to back. :temperature -> temperature:  
and remove =>

`%{:temperature => 24.5} would be used as %{temperature: 24.5}`