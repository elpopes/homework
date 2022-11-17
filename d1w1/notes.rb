def print_name(name, options={upper: false, repeats:1})
    name.upcase! if options[:upper]
    p name * options[:repeats]
end

print_name("max", options={upper: true, repeats:10})

def say_hello(first_name, *last_name)
    p first_name
    p *last_name
end

say_hello("lorenzo", "max", "marcello")

p ['max','tania','marcello','lorenzo'].inject('martine'){|acc,el| acc + el}

def bubble_sort(array)
    sorted = false
    while sorted == false
        sorted = true
        (0...array.length - 1).each do |i|
            j = i+1
            if array[i] > array[j]
                array[i], array[j] = array[j], array[i]
                sorted = false
            end
        end
    end
    array
end

def save_day(num)
    begin
        p "let's try..."
        p "hello world" * num
        p "sup"
    rescue
        p "HELLO WORLD!"
    end
end

larray = (1..100).to_a

larray = larray.shuffle
p larray
p bubble_sort(larray)

save_day(10)
save_day("cat")

def format_name(string)
    raise "argument must be a string" if !string.is_a?(String)
    names = string.split(" ")
    names.map {|name| name.capitalize}.join(" ")
end

p format_name("lorenzo tijerina")
p format_name(3000)