things to know:

diff between variables and objects
id if operation mutates object or just reassigns var
given a code snippet know which vars are in scope

Don't need to know 
memory allocation
garbage collection

References in Ruby
variables reference or point to ojects stored in memory
= assignment operator doesn't change ojbect stored in memory

mutable can be changed 
immtable can't be changed, like numbers and symbols. nil is also immutabe; and boolian.

references diagram:
    line of empty blocks
    a = 7 points to the place in memory for 7 (immutable object)
    b = 9 points to place in mem for integer 9
    a += b means a = a + b, which reassigns a to point to 16.

    arr = [1,2,3] means arr is pointing to 1,2,and 3 integers in memory, but arr is now taking up a place in memory too holding references to those numbers. (lots of squigly lines)

    now if we say c = arr we're pointing to the place in memory where the array is.

    arr[0] = 4 means that we're erasing the pointer to 1 and assigning the pointer to 4. We're creating a new relationship betweem arr[0] and 4.

    if you say c[1] = 10 then arr[1] will also now point to 10.

    but if you mutate the original array by shoveling in a new value we will create a new space that will be pointing to a new element. Will c change?

    def switch_player!
        @current_pl == @p1 ? @current_pl = @p2 : @current_pl = @p1
    end

in this case we have our player objects in memory holding the value of (:X), for example. @p2(:O) will point to a different place in memory pointing to :X as well as have its own place in memory. @current_pl will point to p1 until we switch_player!   

strings have a different object id ('lorenzo'.object_id) will be different every time because we're initializing a new string everytime. 

a variable, once you set it to a number it will have the same object id as the number it's point to.

a = 7
b = 8
a += b means that (a) now has the same object id as 15.

Soo, if we create an array called 'arr' and then set 'c' equal to 'arr' using the = c will have the same object as arr and the changes you make to that array will be shown when calling either variable.

Soo, if you do a += on an array variable it will create a new object id because += means arr = arr + new_arr. Meaning:

    arr.concat(new_arr) is different than arr += new_arr even though the results look the same. In the first case arr will keep the same object id and in the second operation it creates a new object and object id.

Know and understand the difference betweem <<; concat; and += 



BLOCK SCOPING





x = 2
3.times do |i,x|
    puts i
    puts x 
end


arr = Array.new(3, [])

better_arr = Array.new(3){[]}


HASH DEFAULTS
hash = Hash.new{|h,k| h[k] = []}


some_array = [1]
some_hash = { some_array => 'secrets' }
key = some_array.hash
some_array << 2
some_hash[key] #=> ???
