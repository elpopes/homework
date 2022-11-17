## Abstraction and Encapsulation
# class Course
#     def initialize(name, teachers, max_students)
#          @name = name
#          @teachers = teachers
#          @max_students = max_students
#          @students = []
#     end

#     def max_students  ## these getters are available outside
#         @max_students
#     end

#     def students
#         @students
#     end

# end

# course = Course.new("Basic", ['jim', 'ed'], 3)

# if course.students.length < course.max_students ## this is outside
#     course.students << "alice"
# end

class Course
    def initialize(name, teachers, max_students)
      @name = name
      @teachers = teachers
      @max_students = max_students
      @students = []
    end
  
    def enroll(student) ## here there are no getters or setters. You call the enroll method and the class does the work.
      @students << student if @students.length < @max_students
    end
  end  
  
  course = Course.new("Object Oriented Programming 101", ["Ada Lovelace", "Brian Kernighan"], 3)
  
  # Let's to enroll a student
  course.enroll("Alice")


class Queue
    def initialize
        @line = []
    end

    def add(ele)
        @line << ele 
        nil
    end

    def remove
        @line.shift
    end
end

grocery_checkout = Queue.new

grocery_checkout.add("bob")
grocery_checkout.add("alice")
grocery_checkout.remove
grocery_checkout.add('noam')
grocery_checkout.add('donald')
grocery_checkout.remove
grocery_checkout.remove
grocery_checkout.remove
