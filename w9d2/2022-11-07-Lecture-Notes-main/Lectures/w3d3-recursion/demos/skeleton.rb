require 'byebug'

# function takes in a number, n, and sums all numbers to n

def iter_sum(n)
    sum = 0
    (1..n).each do |num|
        sum += num
    end
    return sum
end

# p iter_sum(3) # 6
# p iter_sum(7) # 28
# p iter_sum(100) # 5050
# p iter_sum(100000) # 5000050000

# What is the trivial solution?
# - return 0 if n == 0
# - return 1 if n == 1

# What is the repeating process?
# Adding last sum to the next number up until n

def rec_sum(n) # 7
    return 0 if n <= 0
    return 1 if n == 1

    # 7 + rec_sum(6) -> 21
    # 6 + rec_sum(5) -> 15
    # 5 + rec_sum(4) -> 10
    # 4 + rec_sum(3) -> 6
    # 3 + rec_sum(2) -> 3
    # 2 + rec_sum(1) -> 1

    n + rec_sum(n-1)
end

# p rec_sum(3) # 6
# p rec_sum(7) # 28
# p rec_sum(100) # 5050
# p rec_sum(100000) # too many recursive calls breaks ruby's call stack 





# --------------------------





# function reverses a string


# What is the trivial solution?
# - 'c' -> 'c'
# - '' -> ''

# What is the repeating process?
# - Start off with the last char of the str
# - then add the rest of the string reversed on top of this

def rec_reverse(str)
    return str if str.length <= 1

    # y + rec_sum("turke") -> "ekrut"
    # e + rec_sum("turk") -> "krut"
    # k + rec_sum("tur") -> "rut"
    # r + rec_sum("tu") -> "ut"
    # u + rec_sum("t") -> "t"

    str[-1] + rec_reverse(str[0..-2])
end

# p rec_reverse('cat') # "tac"
# p rec_reverse('turkey') # "yekrut"

def iter_reverse(str)
    reversed_arr = []
    str.each_char do |char|
        reversed_arr.unshift(char)
    end
    reversed_arr.join('')
end  

# p iter_reverse('cat') # "tac"
# p iter_reverse('turkey') # "yekrut"





# --------------------------





# function that returns the nth Fibonacci number

# Fibonacci example:
# 0, 1, 1, 2, 3, 5...

# What is the trivial solution?
# first two elements in the fibonacci sequence [0, 1]

# What is the repeating process?
# the previous two numbers of the fibonacci sequence added to be the next fibonacci number

def fibs(n) # 6 
    return 0 if n == 1 
    return 1 if n == 2

    # Write out sequence and see what our outcome of n = 6 would result 
    # 0, 1, 1, 2, 3, 5 
    # n = 1 : 0 (base case) 
    # n = 2 : 1 (base case) 
    # n = 3 : 1 + 0 
    # n = 4 : 1 + 1 
    # n = 5 : 2 + 1 
    # n = 6 : 3 + 2 
    
    # n = 1 : 0 (base case) 
    # n = 2 : 1 (base case) 
    # n = 3 : 1 (base case) + 0 (base case)

    # n = 3 : 1 + 0
    # n = 3 : fibs(2) + fibs(1)
    # n = 3 : fibs(n-1) + fibs(n-2)

    fibs(n-1) + fibs(n-2)

    # Try it out now with our new equation and try to substitute! 
    # fibs(6) = fibs(5) + fibs(4) -> 5 
    # fibs(5) = fibs(4) + fibs(3) -> 3 
    # fibs(4) = fibs(3) + fibs(2) -> 2 
    # fibs(3) = fibs(2) + fibs(1) -> 1 
end

# p fibs(1) #=> 0
# p fibs(2) #=> 1
# p fibs(3) #=> 1
# p fibs(4) #=> 2
# p fibs(5) #=> 3
# p fibs(6) #=> 5





# --------------------------



# Find all the Fibonacci numbers up to and including the nth in an array

# What is the trivial case?
# first two elements in the fibonacci sequence [0, 1]

# What is repeating process?
# the previous two numbers of the fibonacci sequence added to be the next fibonacci number

def all_fibs(n) # n = 3
    return [] if n == 0
    return [0] if n == 1
    return [0,1] if n == 2
    
    # n = 1: [0]
    # n = 2: [0,1]
    # [0,1] << 1 + 0
    # n = 3: [0,1,1]

    # Notice that the 1 and 0 are in that array
    # We know that array and have access to it's two last values
    # [0,1] << 1 + 0

    # Imagine arr = [0,1]
    # So how do we get the arr = [0,1,1] with this approach?
    # arr << arr[-1] + arr[-2]

    # In our case, [0,1] is essentially just all_fibs(2) (our basecase)
    # So we can use it like an array here
    # [0,1] << 1 + 0
    # all_fibs(2) << all_fibs(2)[-1] + all_fibs(2)[-2]

    all_fibs(n-1) << all_fibs(n-1)[-1] + all_fibs(n-1)[-2]

    # all_fibs(n-1)[-1] = [0, 1][-1] = 1
    # all_fibs(n-1)[-2] = [0, 1][-2] = 0
end

# p all_fibs(0) #=> []
# p all_fibs(1) #=> [0]
# p all_fibs(2) #=> [0, 1]
# p all_fibs(3) #=> [0, 1, 1]
# p all_fibs(4) #=> [0, 1, 1, 2]
# p all_fibs(5) #=> [0, 1, 1, 2, 3]
# p all_fibs(6) #=> [0, 1, 1, 2 ,3, 5]




# --------------------------





# now with memoization!
def fast_all_fibs(n)
    return [0,1].take(n) if n <= 2
    prev_fibs = fast_all_fibs(n-1) # [0,1,1,2]
    prev_fibs << prev_fibs[-1] + prev_fibs[-2]
end

# p fast_all_fibs(0) #=> []
# p fast_all_fibs(1) #=> [0]
# p fast_all_fibs(2) #=> [0, 1]
# p fast_all_fibs(3) #=> [0, 1, 1]
# p fast_all_fibs(4) #=> [0, 1, 1, 2]
# p fast_all_fibs(5) #=> [0, 1, 1, 2, 3]
# p fast_all_fibs(6) #=> [0, 1, 1, 2, 3, 5]
# p fast_all_fibs(20) #=> instant!
# p fast_all_fibs(50) #=> instant!




# --------------------------




# Function that returns the nth row of the Pascal's Triangle

# Pascal's Triangle
#         1
#        1 1
#       1 2 1
#      1 3 3 1
#     1 4 6 4 1
#   1 5 10 10 5 1
# 1 6 15 20 15 6 1

# What is trivial solution?
# - 0 -> [1]
# - 1 -> [1,1]

# What is the repeating pattern?
# - Add each element to the element next to it and shovel into a new array
# - First element is 1 and last element is 1
# - Inner element = sum of prior row at the same index and index prior

def pascal_row(n)
    return [1] if n == 0 
    return [1, 1] if n == 1
    last_row = pascal_row(n-1)
    # memoization: saves the value so we don't have to do this call multiple time

    # Now that we have the last row, again trust the process
    # we can make a new row with the knowledge of the last row
    # Lets shovel all of the pair sum result into a new array
    pair_sums = []

    # Now we want to iterate over the last row and grab pairs
    # to add and shovel into this new array

    i = 0
    # [1, 4, 6, 4, 1]
    # 0 < last_row.length -> 5 iterations
    # However, we want to grab pairs of the array like 1,4 or 4,6. So we need 4 iterations
    # since we only need 4 iterations for each pair to sum, we need to add '- 1'
    # makes sure we don't run off the end of the array
    # And finally, we can access the next element of the array with a i+1 index
    while i < last_row.length - 1
        pair_sums << last_row[i] + last_row[i+1] # adds the new value 
        i += 1
    end

    # Don't forget we need the ones on each end
    return [1] + pair_sums + [1]
end

# p pascal_row(0) # [1]
# p pascal_row(1) # [1, 1]
# p pascal_row(2) # [1, 2, 1]
# p pascal_row(3) # [1, 3, 3, 1]
# p pascal_row(4) # [1, 4, 6, 4, 1]
# p pascal_row(5) # [1, 5, 10, 10, 5, 1]
# p pascal_row(6) # [1, 6, 15, 20, 15, 6, 1]