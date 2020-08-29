So if we send a message or data to a process, how would the process know that it received a data.  

How would we know that we receive a letter. We check the mailbox. When do we check the maibox. When we want.

Similarly when we want to check whether we received a message in the mailbox, we issue `receive` command.  

It takes message from the mailbox and matches with the patterns given. If any of the pattern matches, it performs the action listed.  

If nothing matches, the message is put back in the mailbox. So beware of filling up mailbox, it might slow the process later. Try to handle all the messages.

The pattern matching works similar to case statement.
```elixir
receive do
    {:ok, :a} -> "received atom :a with a ok message"
    "a" -> "received string a"
    _ -> "I don't know what to do with this."
end
```
> Note that when a process sees receive block, it waits there. It won't continue with the next command.