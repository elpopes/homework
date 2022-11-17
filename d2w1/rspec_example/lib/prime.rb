def prime?(num)
    return false if num < 2
    (2...num).none? {|div| num % div == 0}
end