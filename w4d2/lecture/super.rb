class SuperClass
        def some_method
                puts "in SuperClass#some_method"
        end

end

class Subclass < SuperClass
        def some_method
                super
                puts "in SubClass#some_method"
        end
end

s = Subclasss.some_method # whill print in superclasssomemethod then in subclaass some method.
## I think you can think of it as "super" from tv.