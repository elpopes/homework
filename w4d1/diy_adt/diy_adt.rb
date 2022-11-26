class Stack

    def initialize
        @stack = []
    end

    def push(el)
        @stack << el
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end

end

class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[1]
    end
end

class Map
    def initialize
        @map = []
    end

    def set(key, value)
        hasit = false
        @map.each do |pair|
            hasit = true && pair[1] = value if key == pair[0]
        end
        @map << [key,value] if hasit == false
    end

    def get(key)
        @map.each do |pair|
            return pair if pair[0] == key
        end
    end

    def delete(key)
        @map.each do |pair|
            @map.delete(pair) if key == pair[0]
        end
    end

    def show
        @map.dup
    end
end

stackish = Stack.new
p stackish.push(7)
p stackish.push("hotdog")
p stackish.push(:X)
p stackish.peek
p stackish.pop
p stackish.peek

quish = Queue.new
p quish.enqueue(:joe)
p quish.enqueue(:ken)
p quish.enqueue(:larry)
p quish.peek
p quish.dequeue
p quish.peek
p quish

p mappy = Map.new
p mappy.set(:A, "lizard")
p mappy.set(:B, 7)
p mappy.set(:C, [1,2,3])
p mappy.set(:D, false)
p mappy.show
p mappy.get(:C)
p mappy.delete(:B)
p mappy.show
p mappy.get(:B)
p mappy.set(:C, "not an array")
p mappy.show