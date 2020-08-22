### A doubt would arise on the usage of atoms vs strings.
Atoms will occupy single memory for all the referenced places.  
Strings will occupy different memory spots when having different references.

Here comes the catch.  
Since atoms are repeatedly referenced, they wont be garbage collected between function calls, as there might be an opportunity to reuse in some other functions.(So beware of using long atoms dynamically created by users. Because it might fill up the memory.)

But in case of strings they will be garbage collected at the end of each function call.
> In other languages we usually have **constant strings** for this purpose.