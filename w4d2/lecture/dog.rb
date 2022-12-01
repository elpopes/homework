class Dog
        def initialize

        end

        def rename(new_name)
                self.name = new_name
        end

        def get_name
                p get_namep self.name
        end
        
        protected
        # private
        attr_reader :name

        def name=(new_name)
                @name = new_name
        end
end

