def sqrt(num)
    unless num >= 0
        raise ArgumentError.new "Cannot take sqrt of neg"
    end
end

def main
    while true

        puts "please input a number"
        num = gets.to_i

        # this block allows error to be caught
        begin
            sqrt(num)
        # this saves exception to e
        rescue ArgumentError => e
            puts "couldn't take the square root of #{num}"
            puts "error was #{e.message}"
        end
    end
end

# sometimes there is impoirtant code that must be executed

begin
    a_dangerous_operation
rescue StandardError => exception
    puts "something went wrong: #{e.message}"
ensure
    puts "no matter what run this!"
end

# common examples are closing files

f = File.open
begin
    f << a_dangerous_operation
ensure
    f.close
end

# retry...

def prompt_name
    puts "plese input a name:"
    name_parts = gets.chomp.split

    if name_parts.count != 2
        raise "not enough names"
    end

    name_parts
end

def echo_name
    begin
        fname, lname = prompt_name

        puts "hello #{fname} of #{lname}"
    rescue
        puts "Please just two names"
        # the retry keyword repeats begin block from start
        # useful for looping until success
        retry

    end
end

def slope(pos1, pos2)
    (pos2.y - pos1.y) / (pos2.x)
rescue ZeroDivisionError
    nil
end

def echo_name
    fname, lname = prompt_name
    puts "hello #{fname} of #{lname}"
rescue
    puts "Please only two names please"
    retry
end

## ArgumentError signals argument is wrong like when people
## be entering the wrong thing into getchomps.
## RuntimeError is generic. You can give info with...

raise RuntimeError.new("You need to do so and so...")