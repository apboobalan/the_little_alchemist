What if we want to do complex operations. We club those individual operations into functions.
```elixir
inc = fn value ->
        temp =  value + 2
        temp - 1
      end
```
_I know what this does( increment value by one) is trivial, but will introduce complexity later_  
`value` near fn is called as parameter of the function.  
calling function `inc.(1)` will give 2. 
`inc.(3)` will give 4
> Note `.` in between function name and (). This is one type of function. We will see another type later.  

_We saw this function type first because we want to execute everything in iex. Other types require Module files_
