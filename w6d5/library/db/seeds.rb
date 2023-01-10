# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ApplicationRecord.transaction do

    puts "Destroying Table Entries..."
    Book.destroy_all # belongs to Yips and Users
    
    puts "Resetting primary keys..."
    ApplicationRecord.connection.reset_pk_sequence!('books')
  
    # Instructors
    puts "Creating books..."
    elliot = Book.create!(title: "all_knowing_elliot", year: 2011, author: "C", description: "those_are_teef@aa.io")
    ryan = Book.create!(title: "will_climb_rocks", year: 2011, author: "JavaScript" , description: "boulderz@aa.io")
    dean = Book.create!(title: "dean_machine", year: 2011, author: "Ruby", description: "deans_diary@aa.io")
    angela = Book.create!(title: "loves_capy", year: 2011, author: "JavaScript", description: "chosenone@aa.io")
    charlos = Book.create!(title: "charlos_gets_buckets", year: 2011, author: "Ruby", description: "ballin@aa.io")
    alissa = Book.create!(title: "cow_luva", year: 2011, author: "JavaScript" , description: "cows@aa.io")
    joe = Book.create!(title: "trader_joes_4lyf3", year: 2011, author: "Ruby", description: "thetraderjoe@aa.io")
    walker = Book.create!(title: "wakka_wakka", year: 2011, author: "JavaScript", description: "wakka@wakka.walking")
    mike = Book.create!(title: "like_mike", year: 2011, author: "Ruby", description: "mike@aa.io")
    michelle = Book.create!(title: "michelle_bell", year: 2011, author: "JavaScript", description: "michelle@aa.io")
    vanessa = Book.create!(title: "the_vanessa", year: 2011, author: "Ruby", description: "vanessa@aa.io")
    jen = Book.create!(title: "jen_ken_intensifies", year: 2011, author: "JavaScript", description: "jen@aa.io")
    big_company = Book.create!(title: "instructors_rock", year: 52, author: "Instructors", description: "giveus@money.now")
  
end