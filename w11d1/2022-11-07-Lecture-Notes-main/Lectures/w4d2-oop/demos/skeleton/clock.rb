# # No abstraction, bad! 

# sec = 0
# min = 0
# hrs = 0

# def tick(sec, min, hrs)
#     sec += 1
#     if sec == 60
#         sec = 0
#         min += 1
#     end
#     if min == 60
#         min = 0 
#         hrs += 1
#     end
#     return [sec, min, hrs]
# end

# def print(sec, min, hrs)
#     puts "#{hrs}:#{min}:#{sec}"
# end

# while true
#     sleep(1)
#     print(sec, min, hrs)
#     new_time = tick(sec, min, hrs)
#     sec = new_time[0]
#     mins = new_time[1]
#     hrs = new_time[2]
# end





# Abstraction, good!

# class Clock
#     attr_accessor :sec, :min, :hrs
#     def initialize
#         @sec = 0
#         @min = 0
#         @hrs = 0
#     end

#     def run
#         while true 
#             sleep(1)
#             tick
#             print
#         end
#     end
    
#     private

#     def tick
#         self.sec += 1
#         # seconds = 1
#         increment_min
#         increment_hrs
#     end

#     def print
#         puts "#{self.hrs}:#{self.min}:#{self.sec}"
#     end
    
#     def increment_min
#         if self.sec == 60
#             self.min += 1
#             self.sec = 0 
#         end
#     end

#     def increment_hrs
#         if self.min == 60
#             self.hrs += 1
#             self.min = 0 
#         end
#     end

# end

# Clock.new.run




class Test
    def test_method(other_instance)
        protected_method                  # a
        self.protected_method             # b
        other_instance.protected_method   # c
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