puts "Enter 'yes' or 'no'"

response = gets.chomp
response = response[0].downcase

if response == "y"
  puts "yup!"
elsif response == "n"
  puts "nah!"
elsif response.to_i != 0
    puts "pretty sure that's a number, dude."
else
  puts "I'm sorry, my responses are limited."
end


