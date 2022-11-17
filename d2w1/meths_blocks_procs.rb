p "why doesn't this work?"
unprime = Proc.new do |num|
    return true if num < 2
    (2...num).any? {|div| num % div == 0}
end

p (1..100).to_a.select(&unprime)
class Integer
    def is_prime?
        return false if self < 2
        (2...self).none? {|div| self % div == 0}
    end
end

double = Proc.new do |num| 
    num * 2
end

is_even = Proc.new do |num|
    if num % 2 == 0
        true
    else
        false
    end
end

def use_proc(num, proc)
    proc.call(num)
end

p ['a','b','c'].map(&:upcase)
p (1..100).to_a.select(&:is_prime?)

p use_proc(10, double)

p is_even.call(12)


def add_and_proc(num1, num2, &prc)
    prc.call(num1 + num2)
end

p add_and_proc(7, 2) {|num| num * 2}


p add_and_proc(3, 6) {|num| num * num}


p add_and_proc(3, 6) {|num| -1 * num}

###why doesn't this work?



doubler = Proc.new {|num| num * 2}
p [1,2,3].map(&doubler)

p "why doesn't this work?"