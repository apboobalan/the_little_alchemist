Let's face a problem now.
- Weather data about a place {:ok, 24.5, 755, 20, 33, "partly cloudy"} using a tuple.
mmm... what are these values? we could put {status, temperature, pressure, min, max, description} on a sticky notes
What if we could name the values? Here comes the maps.
- weather = %{ :status => :ok, :temperature => :24.5, :pressure => 755, :min => 20, :max => 33, :description => "partly cloudy" }
it's nice right.
How can be get back the data? weather[:temperature] = 24.5

So, %{key => value} represents a map. `key` and `value` can be of any datatypes, even map, tuple.(will see an example).