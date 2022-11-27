require "set"

class GraphNode
        attr_accessor :val, :neighbors
        def initialize(val)
                self.val = val
                self.neighbors = []

        end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def depth_first(node, visited = Set.new())
        return nil if (visited.include?(node.val))

        puts node.val
        visited.add(node.val)
        node.neighbors.each do |neighbor|
                depth_first(neighbor, visited)
        end
end

depth_first(f)

# Adjancency Matrix
# A -> 0, B -> 1, C -> 2, D -> 3, E -> 4, F -> 5

#          A     B     C       D     E       F
matrix = [
        [true,  true,  true,  false, true,  false] #A
        [false, true,  false, false, false, false] #B
        [false, true,  true,  true,  false, false] #C
        [false, false, false, true,  false, false] #D
        [true,  false, false, false, true,  false] #E
        [false, false, false, false, true,  false] #D
]

# Adjanceny List

graph = {
        a: [:b, :c, :e],
        b: [],
        c: [:b, :d],
        d: [],
        e: [:a],
        f: [:e]
}
### this only works if you have a good starting point, but by def often won't
def depth_first(node, graph, visited = Set.new())
        return nil if visited.include?(node)
        puts node
        visited.add(node)

        graph[node].each do |neighbor|
                depth_first(neighbor, graph, visited);
        end
end

depth_first(:f, graph)


### but since the whole graph is contained in the adjanceny list we can use
### an iterative method that goes through the whole graph, calling the 
### recursive search on each node.

def depth_first(graph)
        visited = Set.new()
        graph.keys.each do |node|
                _depth_first(node, graph, visited)
        end
end

def _depth_first(node, graph, visited)
        return nil if visited.include?(node)

        puts node
        visited.add(node)

        graph[node].each do |neighbor|
                _depth_first(neighbor, graph, visited)
        end
end

depth_first(graph)

### consider a forest, a graph with multiple trees:


graph = {
        h: [:i, :j],
        i: [],
        j: [:k],
        k: [],
        l: [:m],
        m: [],
}

depth_first(graph)