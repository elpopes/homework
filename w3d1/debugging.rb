def prime?(num)
    (2...num).each do |idx|
        if num % idx == 0
            return false
        end
    end
end

def primes(num_primes)
    primes = []
    num = 2
    while primes.length < num_primes
        primes << num if prime?(num)
        num += 1
    end
    primes
end

if __FILE__ == $PROGRAM_NAME
    p primes(100)
    p primes(10)
end