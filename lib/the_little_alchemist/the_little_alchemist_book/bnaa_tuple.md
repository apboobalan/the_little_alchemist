### We would like to group a concept. And we name it as tuple. How can we go about it.

We can group values which are limited in number by surrounding them by {} separated by commas.
- Represent a point in 2d `{1,2}` {x, y}
- Represent a point in 3d `{0,0,0}` {x, y, z}
- Represent coordinates of a place `{41.9008581, 12.4795139}` {latitude, longitude}
- Successfully read temperature from a service `{:ok, 5}` {status, temperature}
- Represent error message from a function call `{:error, "Invalid argument passed."}` {status, reason}

Then whats the difference between List and tuple.  
Lists can grow in size and usually used to store elements of same type.  
Tuples are of fixed length and used to group elements of different types to represent a complex concept.