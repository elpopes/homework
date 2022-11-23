def pow(base, exponent)
    i = 0
  ​
    while i < exponent
      result = result * base  # Error: result is being used before it has been defined.
  ​
      i += 1
    end
  ​
    result
  end


 3.times do
    x = 4
  end
  ​
  puts x # Error - undefined local variable `x`


x = 2
​
3.times do
  x += 2
end
​
puts x # outputs 8 (2 + 3*2)

if true
    i = 2
  end
  ​
  puts i # outputs 2
  Or this: ​
  
  while true
    i = 2
    break
  end
  ​
  puts i # outputs 2



  x = 2
​
def display_x
  puts x
end
​
display_x # Error - undefined local variable `x`


x = 2
​
def display_x(x)
  puts x
end
​
display_x(x) # outputs 2


my_var = 2
​
def display_thing(method_var)
  puts method_var
end
​
display_thing(my_var) # outputs 2

p fourth_power(2) # outputs 16 (2^4)

def fourth_power(i)
    square(i) * square(i)
end
  ​
def square(i)
    i * i
end

$GLOBAL_VAR = 'what now?'


# Class variable (@@a_variable): Available from the class definition and any sub-classes. Not available from anywhere outside.
# Instance variable (@a_variable): Available only within a specific object, across all methods in a class instance. Not available directly from class definitions.
# Global variable ($a_variable): Available everywhere within your Ruby script.
# Local variable (a_variable): It depends on the scope. You’ll be working with these most and thus encounter the most problems, because their scope depends on various things.

v0 = 0
SomeClass = Class.new do
  v1 = 1
  p local_variables

  define_method(:some_method) do
    v2 = 2
    p local_variables
  end
end

some_class = SomeClass.new
some_class.some_method




hi = 'hi'
hello ='hello'
3.times do |i, hi, hello|
  p i
  hi = 'hi again'
  hello = 'hello again'
end
p hi # "hi"
p hello # "hello"

2.times do
    i ||= 1
    print "#{i} "
    i += 1
    print "#{i} "
  end


  def foo
    x = 1
    lambda { x }
  end
  
  x = 2
  
  p foo.call
#   The answer is 1. The reason for this is, blocks and block objects (procs, lambdas) see the scope in their definition and not in their invocation. This has to do with the fact they are treated as closures in Ruby. A closure is simply code containing behavior that can:
# be passed around like an object (which can be called later)
# remember the variables that were in scope when the closure (lambda in this example) was defined.


def increase_by(i)
    start = 0
    lambda { start += i }
end
  
  increase = increase_by(3)
  start = 453534534 # won't affect anything
  p increase.call # 3
  p increase.call # 6


  Scope Gates
  method defs
  class defs
  module defs 

x = 10
def some_method
    puts x
end

parameters vs arguments
Parameter = variable in a method def
Argument = variable method is invoked with

Passing arguments to methods
paramter within the method, he arg 

def inc(num)
    num += 1
end

a = 1
inc(a)
puts a

def add_square(arr, num)
    arr = arr.clone
    arr << (num ** 2)
end

squares = [1,4,9]
add_square(squares, 4)
p squares 

