require_relative "child"
require_relative "parent"
require_relative "cat"

class Family
    attr_accessor :name, :size, :parent_1, :parent_2, :child_1, :child_2, :cat
    def initialize(name, members_hash)
        @name = name
        @size = members_hash.size
        @parent_1 = Parent.new(members_hash[parent_1])
        @parent_2 = Parent.new(members_hash[parent_2])
        @child_1 = Child.new(members_hash[child_1])
        @child_2 = Child.new(members_hash[child_2])
        @cat = Cat.new(members_hash[cat])
    end
end