Here is an amazing operator `|>` which we left out.  
Welcome to wonder land.

What if we want to increment 1 three times?  
`inc.(inc.(inc.(1)))` will give 4.  
Does it seem odd. Here comes the pipe.  
`1 |> inc.() |> inc.() |> inc.()` will give 4.  
This would increase readability

So the result of the previous expression is passed as the first argument to the next function.