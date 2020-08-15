It's somewhat cliché is Elixir community that everybody lies about variable assignment first, And then will reveal that it's pattern matching indeed under the hood. I am not an exception.  
Let's stop the hype and get into details.  
Let's see a simple assignment first.  
age = 30(Nothing special about it). always matches   
`{:ok, temperature} = {:ok, 24.5}` will lead to temperature being 24.5 (WHAAAATT!!!)  
`%{temperature: temp, max: max_temp, min: min_temp} =`  
`%{temperature: 24.5, max: 30, min: 20}` will lead to following assignments  
temp = 24.5, max_temp = 30, min_temp = 20  
Try this in iex.  
We can use these values in the next calculations.