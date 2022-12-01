## Abstraction

class Clock
        def initialize(values)
                @hours
                @minutes
                @seconds
        end
        #public
        def see_time

        end

        def set_time

        end

        private
        def inner_workings

        end
end

## Encapsulation

class Secrets
        def initialize(secret)

        end

        private

        def hear_secret

        end
end

## Implementation
## logic of code hidden from user

## Polymorphism

## Public, private, protected
class Test
        def example_method
                ## explicit
                self.some_method
                 ## implicit
                some_method
        end

        ## matters for private methods

        def some_method

        end
end

#Public
        #default
#private 
        #only called within class def
        #can only be called implicitly or explicitly(except setters)
        #this is also on the newew version of ruby
        ##older ruby all private methods had to be called implicitly 
        #always will be called on self
        #helper methods should usually be private
#protected
        #middle ground beteen ppublic & private
        #can be called within the class def
        #can be called implicit or explicit
        #can be used on other instances of the class
        #neither can be accessed by user

        class Test
                def test_method(other_instance)
                        public_method
                        self.public_method
                        other_instance.public_method
                end

                def public_method
                        puts "This is a public method"
                end
        end

        a = Test.new
        b = Test.new
        a.test_method(b)
        a.public_method

        
        class Test
                def test_method(other_instance)
                        private_method
                        ## next line not allowed in older ruby
                        self.private_method
                        other_instance.private_method
                end

                private

                def private_method
                        puts "This is a private method"
                end
        end

        a = Test.new
        b = Test.new
        a.test_method(b)
        a.private_method


         
        class Test
                def test_method(other_instance)
                        protected_method
                        ## next line not allowed in older ruby
                        self.protected_method
                        other_instance.protected_method
                end

                protected

                def protected_method
                        puts "This is a protected method"
                end


        end

        class TestBad
                protected
                def protected_method
                        puts "This is a protected method"
                end
        end

        a = Test.new
        b = TestBad.new
        a.test_method(b)
        a.protected_method

        a = Test.new
        b = Test.new
        a.test_method(b)
        a.protected_method
