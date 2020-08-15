What if we want to do complex operations. We club those individual operations into functions.
```elixir
inc = fn value ->
        temp =  value + 2
        temp - 1
      end
```
_I know this is trivial, but will introduce complexity later_
`value` near fn is called as parameter of the function.  
inc.(1) will give 2. Here 1 is called argument which is passed to function parameter. Hence value will become 1 at the start of the function.  
inc.(3) will give 4
> note . in between function name and (). This is one type of function. Another type we will see later.  

_I introduced this function first because I want to execute everything in iex. Other types require Module files_
