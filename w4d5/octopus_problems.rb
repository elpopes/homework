def sluggish(fishes)
    biggest_fish = fishes[0]
    fishes.each_with_index do |f_1, i|
        fishes.each_with_index do |f_2, j|
            if i < j
            biggest_fish = f_2 if f_2.length > f_1.length
            end
        end
    end
    biggest_fish
end

class Array
    def merge_sort(&prc)
      prc ||= Proc.new { |x, y| x <=> y }
  
      return self if count <= 1
  
      midpoint = count / 2
      sorted_left = self.take(midpoint).merge_sort(&prc)
      sorted_right = self.drop(midpoint).merge_sort(&prc)
  
      Array.merge(sorted_left, sorted_right, &prc)
    end
  
    private
    def self.merge(left, right, &prc)
      merged = []
  
      until left.empty? || right.empty?
        case prc.call(left.first, right.first)
        when -1
          merged << left.shift
        when 0
          merged << left.shift
        when 1
          merged << right.shift
        end
      end
  
      merged.concat(left)
      merged.concat(right)
  
      merged
    end
  end

  
def clever_pus(school)
    biggest_fish = school.shift
    school.each {|fish| biggest_fish = fish if fish.length > biggest_fish.length }
    biggest_fish
end

school = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

clever_pus(school)

def nlogn_biggest_fish(fishes)
    prc = Proc.new { |x, y| y.length <=> x.length }
    fishes.merge_sort(&prc)[0]
end

puts nlogn_biggest_fish(fish)
puts sluggish(school) == "fiiiissshhhhhh"


def slow_dance(direction, tiles_array)
    tiles_array.each_with_index do |tile, index|
          return index if tile == direction
    end
end 
    
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
slow_dance("left", tiles_array)

def constant_dance(direction, tiles_array)
    hash = Hash.new{|h,k| tiles_array.each_with_index {|tile, i| h[tile] = i}}
    puts hash[direction]
    puts hash
    puts hash["left"]
end
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
constant_dance("left", tiles_array)



