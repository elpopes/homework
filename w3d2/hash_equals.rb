some_array = [1]
some_hash = { some_array => 'secrets' }
some_array << 2
some_hash[some_array] #=> ???

class Dog
    def initialize
        @dog = "dog"
    end
 end
 
 a = Dog.new
 b = Dog.new
 a = c
 
 a.equal? b #=> false
 a.equal? c #=> true

 case number
 when Integer
    
 when Float

 end


tracking_service = case number
 when /^.Z/ then :ups
 when /^Q/ then :dhl
 when /^96.{20}$/ then :fedex
 when /^[HK].{10}$/ then :ups
end


hash[cat1] #=> 'is the best cat'
cat2 = Cat.new('Fluffy')
hash[cat2] #=> nil



hash = {}
cat1 = Cat.new('Fluffy')
hash[cat1] = 'is the best cat'

class Cat
    def eql?(other)
      self.name == other.name
    end
  end
  
  hash[cat2] #=> 'is the best cat'