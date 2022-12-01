class Clock
        attr_accessor :sec, :min, :hrs
        def initialize
                @sec...
        end

        private
        def tick 
                self.sec +=1
                increment_min
                increment_hrs
        end

        def print
                puts ...
        end

        def increment_min
                if self.sec == 0
                        ...
                end
        end

        def increment_hrs
                if self.min == 0
                        ...
                end
        end
end





# #cringe
# sec = 0
# min = 0
# hrs = 0

# def tick(sec, min, hrs)
#         sec +=1 
#         if sec == 60
#                 sec = 0
#                 min +=1
#         end

#         if min == 60
#                 min = 0
#                 hrs +=1
#         end
#         return [sec, mins, hrs]
# end

# def print(sec, min, hrs)
#         puts ...
# end

# while true 
#         sleep
# end