It's somewhat cliché in Elixir community that everybody lies about variable assignment first, and then will reveal that it's pattern matching indeed under the hood. I am not an exception.  

Let's stop the hype and see some simple assignments first.  
- age = 30(Nothing special about it). always matches   
- `{:ok, temperature} = {:ok, 24.5}` will lead to temperature being 24.5 (WHAAAATT!!!)
- `[a, b] = [1, 2]` will lead to a = 1 and b = 2.
- `%{temperature: temp, max: max_temp, min: min_temp} =`  
`%{temperature: 24.5, max: 30, min: 20}` will lead to following assignments  
     `temp = 24.5, max_temp = 30, min_temp = 20`

Try these in iex.  
We can use these values in the next calculations.