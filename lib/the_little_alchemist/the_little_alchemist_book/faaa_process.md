Here comes the most important, interesting, unique concept of Elixir. **_Processes._**  
Everything runs inside a process in elixir. The iex we saw, the programs which we executed, all run inside a process.  
Consider process as an assembly lane where operations are done. What's the speciality about processes?  
We can have many assembly lanes independently, hence we can do tasks parallelly.  
The codes we executed run inside iex process. So how to create a new process?  
mmm... We spawn it. Yes literally we spawn a process.  
`spawn(ModuleName, :function_name, [arg1, arg2...])`
> Note that we passed function name as atom.