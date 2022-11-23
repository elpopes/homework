x = 4
x = 5 
# x is pointing to a place in memory
x = 4
y = x
x = 10
puts y # is still 4


x = 4
y = x
x += 2 X # x = x+2
put y # is still 4

# fixnums are immutable objects
# Donatelo are mutable. He changes.

x = 'donatelo'

y = x

x << " the TMNT"

puts y

x = 'donatelo'

y = x

x += " the TMNT"

puts y

x = []
y = x
x << 'hello'
puts y  


x = Array.new(3, [])
x[0] << "hello"
p x 

x = Array.new(3){[]}
x[0] << "hello"
p x 

## you can add any kind of block to a new thing when you make it.
h[k] = Array.new(3){|i| p[i]}
    
hash = Hash.new do |h,k|
    h[k] = Array.new(3){|i| i.to_s}
end

my_object = Object.new


def add_to_array!(array, item)
    array << item
end

my_array = []
add_to_array!(my_array, "an item")
p my_array  ## shoveling modifies the array

my_hash = {}
my_hash[:key] = :value  ## writer method and example of syntactic sugar

# []= is a method by += and != are really calling the operators + and ==

true || false
true || this_side_wont(run)
false || but_this_will_throw(exception)


class MemoizedFib
    def initialize
        @values = {}
    end

    def fib(n)
        @values[n] ||= calculate_fib(n)
            # expands to:
    #     @values[n] = @values[n] || calculate_fib(n)
    # if @values[n] is nil (not previously computed), will call
    # `calculate_fib` and store the result for later reference.
    end

    private
    def calculate_fib(n)
        case n
        when 0
            0
        when 1
            1
        else
            fib(n - 1) + fib(n - 2)
        end
    end
end

cats = Hash.new([])

cats['devon']

cats

cats['devon'] += ['jumbo']


cats = Hash.new([])
cats['john'] << 'kiki'
cats['raul']

cats2 = Hash.new() { [] }
cats2[:fred] << :bill
cats2[:tom] << :george


cats3 = Hash.new { |h, k| h[k] = []}
# Here we've modified the block to take two 
#arguments: when Hash needs a default #value, it will pass itself (h) and the key #(k). The block will not only create an #empty array, but also assign it to the #hash.
#this will cause lookup to create value
cats3[:mack]
cats3
