
# Solving a Problem Recursively:
# Because every recursive problem must have a base and 
# recursive case, we can follow these steps to help us 
# write a recursive method:

# Identify the base case in the problem and code it. 
# The base case should explicitly handle the scenario(s) 
# where the arguments are so trivially small, that we 
# immediately know the result without further calculation. 
# Be sure it works by testing it.

# Solve the next level of the problem, using the result of 
# the base case. Test it.

# Modify the code in step 2, generalizing it for every level of the problem.

def count_down(num)
    if num == 0
        p "blastoff"
        return
    end
    sleep 1
    p num
    count_down(num - 1)
end

count_down(10)

def factorial(n)
    return 1 if n == 1
    n * factorial(n - 1)
end

p factorial(5)

def fib(n)
    return 1 if n == 1 || n == 2
    fib(n-1) + fib(n-2)
end

# Recursion is used to solve problems 
# that can be decomposed into smaller 
# versions of the same problem. 

