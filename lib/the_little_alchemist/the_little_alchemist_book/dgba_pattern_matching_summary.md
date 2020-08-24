### summary
In pattern matching, if left side is just variable, the value on right side is assigned to the variable.  
If variable has pin `^` operator, then the value already assigned to variable is checked with the right side.  
 
`x = 5` is a match.  
`^x = 5` is a match because x already has 5.  
`^x = 6` not a match as x has 5 in it.  

If we have some other datatype on the left side,
- type is matched
- then number of elements are matched (list, tuple), keys are matched (map)
- and finally values are matched. 

`[a] = 5` type doesn't match.  
`[a, b] = [1, 2, 3]` type matches but count doesn't match.  
`%{temperature: temp_variable} = %{pressure: 5}` type, count, shape matches but keys doesn't match.  
`%{temperature: 5, pressure: pressure_variable} = %{temperature: 6, pressure: 6}` type, count, shape, keys mathces but value of temperature(5, 6) don't match.