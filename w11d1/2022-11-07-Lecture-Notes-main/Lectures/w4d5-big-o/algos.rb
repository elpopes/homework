def first_thing(array)
  array.first
end






















def three_hundred_thousand_puts(name)
  300000.times { puts "hello, #{name}" }
end


















def print_all(array)
  array.each { |el| puts el }
end

















def most_common_char(word)
  counts = Hash.new(0) # 1 step
  word.chars.each { |char| counts[char] += 1 } # iterating word
  counts.max_by { |k, num| num } # iterating over hash 
  # 0(2n)
  # 0(n)
end











class Array
  def include?(value)
    self.each do |el| # 0(n)
      return true if (el == value) # 1 step 
    end
    
    false
  end
end












def bsearch(nums, target, start = 0, finish = nums.length)
  return nil if start == finish # 1 

  mid = (finish - start) / 2 + start # 2
  case target <=> nums[mid]
  when -1
    bsearch(nums, target, start, mid)
  when 0
    mid
  when 1
    bsearch(nums, target, mid + 1, finish)
  end
end


nums = [2, 3, 4, 5, 6, 7, 10, 11]
left = [2, 3, 4, 5]
left = [2, 3]
left = [2]
# log2(8) = 3
# 2^x = 8

# big-o notation: log(n) 

# Space Complexity
nums = [2, 3, 4, 5, 6, 7, 10, 11]
left = [2, 3, 4, 5]
left = [2, 3]
left = [2]

# Linear Space Complexity 

def iter_bsearch(target)
	# look at full array, intead of chopping in half, 
	# we'll only look at specific half

start_i = 0
end_i = self.length - 1
probe_index = self.length / 2

until start_i == end_i
	case target <=> nums[mid]
	  when -1
	    end_i = probe_index
			probe_index = (start_i + end_i) / 2
		when 0
			return probe_index
	  when 1
	    start_i = probe_index
			probe_index = (start_i + end_i) / 2
	  end
	end
end



class Array
  def merge_sort
    return self if count < 2

    middle = count / 2

    left, right = self.take(middle), self.drop(middle)
    sorted_left, sorted_right = left.merge_sort, right.merge_sort

    self.class.merge(sorted_left, sorted_right)
  end

  def self.merge(left, right)
    merged_array = []
    until left.empty? || right.empty?
      merged_array << ((left.first < right.first) ? left.shift : right.shift)
    end

    merged_array + left + right
  end
end



[8, 7, 6, 5, 4, 3, 2, 1]
[8, 7, 6, 5] 
[8, 7], [6, 5]
[8] [7]
[7, 8] [5,6]

log(n) * n + n
nlog(n) 




def all_pair_sums(array)
  sums = []

  array.each do |el1|
    array.each do |el2|
      sums << el1 + el2
    end
  end

  sums
end
