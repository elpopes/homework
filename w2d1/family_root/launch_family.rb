require_relative "family"

def start_family
    members_hash = Hash.new{|h, k| h[k] = []}
    system("clear")
    puts "Enter family name"
    family_name = gets.chomp.capitalize
    puts "Enter parent 1 name"
    parent_1 = members_hash[gets.chomp.capitalize]
    puts "Enter parent 2 name"
    parent_2 = members_hash[gets.chomp.capitalize]
    puts "Enter first child"
    child_1 = members_hash[gets.chomp.capitalize]
    puts "Enter second child"
    child_2 = members_hash[gets.chomp.capitalize]
    puts members_hash
    puts "Enter cat name"
    cat = members_hash[gets.chomp.capitalize]
    return members_hash
end