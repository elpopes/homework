def factorial(num)
    return num if num == 1 #base
    num * factorial(num-1) #inductive step uses induction
                            # if it works for one thing,
                            # works for the rest
end

#must call function on a smaller part of the problem.
#anything recursion can be iteration and faster
#recursion easier to see it works

def upcase(string)
    return string.capitalize if string.length < 2
    string[0].capitalize << upcase(string[1..-1])
end

def reverse(string)
    return string if string.length < 2
    string[-1] << reverse(string[0...-1])
end

def quick_sort(arr)
    return arr if arr.length < 2
    pivot = arr[0]
    left = arr[1..-1].select {|ele| ele < pivot}
    right = arr[1..-1].select {|ele| ele >= pivot}
    quick_sort(left) + [pivot] + quick_sort(right)
end

def fibonacci(num)
    return 1 if num < 3
    fibonacci(num-1) + fibonacci(num-2) ##what am i missing?
end


def add_odds(n)
    return n if n == 1
    if n.even?
        add_odds(n-1)
    else
        n + add_odds(n-1)
    end
end

class Array
    
    def quick_sort    
        return self.dup if self.length <=1
        pivot = self.first
        left = self.drop(1).select { |el| el < pivot }
        right = self.drop(1).select {|el| el >= pivot}
        left.quick_sort + [pivot] + right.quick_sort
    end

end