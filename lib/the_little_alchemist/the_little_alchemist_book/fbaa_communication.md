After spawning a process, Both the processes continue with their task.  
Then how can we pass data or signal between those two processes. In case we want to get back the result from the newly spawned process, how do we go about it?  
We send back the data. Literally `send` back the data to the process which we need to send.  
Here comes the question, how do we know the process to which we need to send the data.  
We need to make sure that the spawned process knows the address of the process to which we need to send the data.  
We send that address, here we call it as pid(process id), to the spawned process. So after the process is done, it sends back the data.  
`send(pid, data)`