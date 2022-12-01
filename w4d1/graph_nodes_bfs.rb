require "byebug"
require "set"

class GraphNode
        attr_accessor :value, :neighbors
        def initialize(val)
                @value = val
                @neighbors = []
        end

end
def bfs(starting_node, target_value)
        search_array = [starting_node]
        visited = Set.new()
         while search_array.length > 0
                current_node = search_array.shift
                p "this is the current node value #{current_node.value}"

                unless visited.include?(current_node)

                        return current_node.value if current_node.value == target_value
                        visited << current_node

                        search_array += current_node.neighbors
                end
         end
         nil
end

a = GraphNode.new(:a)
b = GraphNode.new(:b)
c = GraphNode.new(:c)
d = GraphNode.new(:d)
e = GraphNode.new(:e)
f = GraphNode.new(:f)

a.neighbors = e, c, b
c.neighbors = [d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, :e)
p bfs(a, :f)
p bfs(f, :b)

