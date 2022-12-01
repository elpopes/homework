class PolyTreeNode
    attr_accessor :parent, :children, :value
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(parent)
        return if parent == self.parent
        if self.parent != nil 
            self.parent.children.delete(self)
        end
        @parent = parent
        self.parent.children << self unless self.parent == nil
    end

    def add_child(child)
        child.parent = self
    end

    def remove_child(child)
        if self.children.include?(child)
            child.parent = nil
        else
            raise "Not a child"
        end
    end

    def dfs(target)
        return self if self.value == target
        children.each do |child|
            result = child.dfs(target)
            return result unless result.nil? 
        end
        nil
    end

    def bfs(target)
        search_array = []
        search_array << self
        while search_array.length > 0
             this_it = search_array.shift
             return this_it if target == this_it.value
             search_array += this_it.children   
        end
        nil
    end

end