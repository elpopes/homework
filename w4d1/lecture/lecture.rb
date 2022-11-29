class PolyTreeNode
        def initialize(root_node)
                children = []
                value = ""
                parent = nil
        end

        def birth(node)
                parent = self

        end
end

class Node
        attr_reader :value, :children
        def initialize(value, children=[])
                @value = value
                @children = children
        end

        def add_child(node)
                @children << node
        end

        def inspect
                "#<Node:#{self.object_id} children:#{self.children}"
        end

end



class Stack
        ## sequential, LIFO, think recursion.
        def initialize
                @store = []

        end

        def push(value)
                store << value
                #add to top
                self
        end

        def add(*values)
                store.concat(values)
        end

        def pop
                #take from top; returns pop
                store.pop
        end

        def peek
                #what's at the top of stack
                store.last
        end

        def size
                #how tall?
                store.length
        end

        def empty?
                #boolian
                store.empty?
        end

        def inspect
                #show only obect id and keep other info hidden
                "#<Stack:#{self.object.id}>"
        end
                
        private
        attr_reader :store
end

class MyQueue
        #FIFO
        def initialize
                @line = []
        end

        def enqueue(value)
                line.unshift(value)
                self
        end

        def dequeue
                line.pop
        end

        def show
                #don't return it because you'll make it chainable queue.show.delete
                self.dup
        end

        def size
                line.length
        end

        def empty?
                line.empty?
        end

        private
        attr_reader :line
end

def bfs(starting_node, target)
        #create a queue with starting node
        array = [starting_node]
        until array.empty?
                current_node = array.shift
                return current_node if current_node.value == target 
                array += current_node.children
        end
        nil
end

def dfs(node, target)
        return node if node.value == target
        node.children.each do |child|
                result = dfs(child, target)
                return result unless result.nil?
        end
        nil
end

class Car
        def initialize

                
        end

        def start

        end

        def stop

        end

        def accelerate

        end

        def slowdown

        end

        def turn_left

        end

        def turn_right

        end
end