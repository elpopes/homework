require 'byebug'

class Array
    def my_each_block(&blk)
        # debugger
        i = 0

        while i < self.length
            blk.call(self[i])
            i += 1
        end

        self
    end

    def my_each_proc(prcs)
        self.my_each_block(&prc)
        # i = 0
        # # debugger
        # while i < self.length
        #     prc.call(self[i])

        #     i += 1
        # end

        self
    end

    def my_each()
        i = 0
        debugger

        while i < self.length
            yield(self[i])

            i += 1
        end

        self
    end

end

arr = [1, 2, 3]
arr.my_each_block { |ele| p ele }

pr1 = Proc.new { |ele| p ele }
# arr.my_each_proc { |ele| p ele } # throws wrong number of arguments error
# arr.my_each_proc(prc)
# arr.my_each { |ele| p ele } 

