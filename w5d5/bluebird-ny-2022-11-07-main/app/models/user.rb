# == Schema Information
#
# Table name: users
#
#  id                    :bigint           not null, primary key
#  username              :string           not null
#  email                 :string           not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  political_affiliation :string           not null
#  age                   :integer          not null
#
class User < ApplicationRecord
    validates :username, :email, presence: true, uniqueness: true

    has_many :chirps,
        primary_key: :id,
        foreign_key: :author_id,
        class_name: :Chirp

    has_many :likes,
        primary_key: :id,
        foreign_key: :liker_id,
        class_name: :Like

    has_many :liked_chirps,
        through: :likes,
        source: :chirp

    # find all users between ages 10 and 20 incluclusive show their username and politcial polical_affiliation:
        # User.where(age: 10..20).select(:username, :polical_affiliation)

    # find all users not yoneger thahn the age of 11. Use where.not
    # User.where.not("age < 11")

    
    #find all political affiliation of users
    
    # User.select(:polical_affiliation).group(:polical_affiliation)

    # find all users who has a political affiliation in this list and order by ascending 
    political_affiliation = ["Ruby", "C"]


    
end
