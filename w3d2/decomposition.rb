# Write a Towers of Hanoi game.

# Keep three arrays, which represents the piles of discs. Pick a representation
# of the discs to store in the arrays; maybe just a number representing their size.

# In a loop, prompt the user (using gets) and ask what pile to select a disc
# from, and where to put it.

# After each move, check to see if they have succeeded in moving all the discs,
# to the final pile. If so, they win!

#with one method

def hanoi
    disks = (1..3).to_a.reverse
    stacks = [disks, [], []]
    until stacks[0].empty? && stacks[1..2].any?(&:empty?)
      max_height = stacks.map(&:count).max
      render_string = (max_height - 1).downto(0).map do |height|
        stacks.map do |stack|
          stack[height] || " "
        end.join("\t")
      end.join("\n")
      puts render_string
      move_hash = { "a" => 0, "b" => 1, "c" => 2 }
      while true
        print "Move From: "
        from_stack_num = move_hash[gets.chomp]
        break unless from_stack_num.nil?
        puts "Invalid move!"
      end
      while true
        print "Move To: "
        to_stack_num = move_hash[gets.chomp]
        break unless to_stack_num.nil?
        puts "Invalid move!"
      end
      from_stack, to_stack = stacks.values_at(from_stack_num, to_stack_num)
      raise "cannot move from empty stack" if from_stack.empty?
      unless (to_stack.empty? || to_stack.last > from_stack.last)
        raise "cannot move onto smaller disk"
      end
      to_stack.push(from_stack.pop)
    end
    puts "You did it!"
  end



  #set up stack of discs
  def disks
    (1..3).to_a.reverse
  end


  #set up stack of three stacks
  def stacks
    [disks, [], []]
  end

  #loop until it's over
  def over?
    stacks[0].empty? && stacks[1..2].any?(&:empty?)
  end

  def hanoi
    until over?
        puts display
        from_stack = get_stack("move from: ")
        to_stack = get_stack("move to: ")
        move_disc(from_stack, to_stack)
    end
  end

  def move_disc(from_stack, to_stack)
    from_stack, to_stack = @stacks.values_at(from_stack_num, to_stack_num)
    raise 'cant move frm empty stack' if from_stack.empty
    unless (to_stack.empty? || to_stack.last > from_stack.last)
        raise 'cant move onto small disc'
    end
    to_stack.push(from_stack.pop)
  end

  def get_stack(prompt)
    move_hash = {"a"=>0, "b"=>, "c" => 2}
    while true
        print prompt
        stack_num = move_hash[gets.chomp]
        return stack_num unless stack_num.nil?
        puts "Invalid move!"
    end
  end

  #display stacks
def display
    max_height = stacks.map(&:count).max
    render_string = (max_height - 1).downto(0).map do |height|
        stacks.map do |stack|
            stack[height] || " "
        end.join("\t")
    end.join("\n")
end


  #get move to position


  #get move from position


  #move disk while checking to see if move is valid

#code smells:

# Duplicated/similar code: see the reading on DRY (Don't Repeat Yourself) code in the sidebar.

# Long methods: see the reading on Method Decomposition and Design in the sidebar.

# Too many parameters: The more parameters a method has, the greater the chance that it is too coupled to code that invokes it. Many parameters may also be a sign of an excessively complex method.

# Data clump: if you see a group of data always being passed around together, this is usually a good candidate for refactoring out into an object. For example start_date and end_date might be pulled out into a date_range object.

# Long method chains: long method chains can often be a sign that you're violating the Law of Demeter: only talk to your "neighbors", only use one dot.
