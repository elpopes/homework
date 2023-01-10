#time over memory
# n over constant
# access versus compare
# n refers to input
# n * n^3 is n^4
# n^2
# n ^ levels of nexting
#simplify
    # simplify fractions
    # drop constants @ coefficient
    # ignore all but the dominating term

# O(1)
    def first_thing(array)
        array.first
    end

    # O(1)
    def three_thousand(name)
        3000.times puts name
    end

    # O(n)
    def print_all(array)
        array.each {|ele| puts ele}
    end

    # O(2n) = O(n) 
    def most_common_char(word)
        counts = Hash.new(0)
        word.chars.each {|char| counts[char] += 1}
        counts.max_by { |k, num| num }
    end

    #O(n)
class Array
    def include?(value)
        self.each do |el|
            return true if (el==value) # 1 step
        end
        false
    end

end

    # log2(8) = O(log^n)
def b_search(nums, target, start = 0, finish = nums.length)
    return nil if start == finish
    mid = (finish - start) / 2 + start
    case target <=> nums[mid]
    when -1
        b_search(nums, target, start, mid)
    when 0
        mid
    when 1
        bsearch(nums, target, mid+1, finish)
    end
end

#Space complexity for b_search is linear

def iter_bsearch(target)

    start_i = 0
    end_i = self.length - 1
    probe_index = self.length / 2
    until start_i = end_i
        case target <=> nums[mid]
        when -1
        end_i = probe_index
        probe_index = (start_i + end_i)
        when 0 
            return probe_index
        when 1
            start_i = probe_index
            probe_index = (start_i + end_i) / 2
        end
    end
end


log(n) * n + n = nlog(n)
class Array
    def merge_sort
        return self if length < 2
        mid = length / 2
        left, right = self.take(middle), self.drop(middle)
        Array.merge(left, right)
    end

    private
    self.merge(left, right, &prc)
        merged = []
        until left.empty? || right.empty?
            merged << ((left.first < right.first) ? left.shift : right.shift)
        end
        merged + left + right
end

def all_pair_sums(array)
    sums = []
    array.each do |el1|
        array.each do |el2|
            sums << el1 + el2
        end
    end
    sums
end

require 'benchmark'Benchmark.bm(12) do |b|
    b.report("1,000")
end


"If you optomize 100% of your code your wasting 90% of your time."

# O(2^n) exponential (subsets)

# O(n!) = factorial (permutations)

