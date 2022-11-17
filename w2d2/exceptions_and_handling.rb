def sqrt(num)
    unless num >= 0
      raise ArgumentError.new "Cannot take sqrt of negative number"
    end
  
    Math.sqrt(num)
end

def main
    # run the main program in a loop
    while true
      # get an integer from the user
      puts "Please input a number"
      num = gets.to_i
  
      begin
        sqrt(num)
      rescue ArgumentError => e
        puts "Couldn't take the square root of #{num}"
        puts "Error was: #{e.message}"
      end
    end
  end
  


#   f = File.open
# begin
#   f << a_dangerous_operation
# ensure
#   # must. close. file.
#   f.close
# end

def prompt_name
    puts "Please input a name:"
    # split name on spaces
    name_parts = gets.chomp.split
  
    if name_parts.count != 2
      raise "Uh-oh, finnicky parsing!"
    end
  
    name_parts
  end
  
  def echo_name
    begin
      fname, lname = prompt_name
  
      puts "Hello #{fname} of #{lname}"
    rescue
      puts "Please only use two names."
      retry
    end
  end

  def slope(pos1, pos2)
    (pos2.y - pos1.y) / (pos2.x - pos1.x)
  rescue ZeroDivisionError
    nil
  end

  raise RuntimeError.new("Didn't try hard enough")

  class EngineStalledError < StandardError
  end
  
  class CollisionOccurredError < StandardError
  end
  
  def drive_car
    # engine may stall, collision may occur
  end
  
  begin
    drive_car
  rescue EngineStalledError => e
    puts "Rescued from engine stalled!"
  rescue CollisionOccurredError => e
    puts "Rescued from collision!"
  ensure
    puts "Car stopped."
  end