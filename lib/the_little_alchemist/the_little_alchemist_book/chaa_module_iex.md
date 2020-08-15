We change the code and execute them and see the results in iex.  
We don't need to execute `iex -S mix` every time.  
After changing codes inside module, execute `r ModuleName` in iex. This will give us updated code.
For example,  
change `:world` to `:worlds` in playground.ex file.  
Execute `r Playground` inside iex.
Now execute `Playground.hello`.
Now we get the updated result of `:worlds`