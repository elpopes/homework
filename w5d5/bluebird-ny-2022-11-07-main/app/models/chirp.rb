# == Schema Information
#
# Table name: chirps
#
#  id         :bigint           not null, primary key
#  body       :text             not null
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Chirp < ApplicationRecord
    validates :body, presence: true
    # validates :author_id, presence: true
    validate :body_too_long

    def body_too_long
        if body && body.length > 140
            errors.add(:body, "too long")
        end
    end

    belongs_to :author,
        primary_key: :id,
        foreign_key: :author_id,
        class_name: :User

    has_many :likes,
        primary_key: :id,
        foreign_key: :chirp_id,
        class_name: :Like

    has_many :likers,
        through: :likes, 
        source: :liker

        # this builds an association and then calls a query on that instance  
    # User.find_by(username: "wakka_wakka").chirps

    # vs
    # can see how many queries are being called in pry
    # Chirp.join(:author).where( users; { username: "wakka_wakka"})    


    # find all chirps liked by people politcally affiliated with...

    # Chirp.joins(:likers).where("users.political_affilitiation = (?)", "Java").distinct

    # Chirp.left_outer_joins(:likes).where( likes: {id: nil} 

    def self.see_chirp
        chirps = Chirp.includes(:author).all
        chirps.each do |chirp|
            puts chirp.author.username
        end
    end

    def self.num_likes
        chirps_with_likes = Chirp
        .select("chirps.*, COUNT(*) AS num_likes")
        .joins(:likes)
        .group(:id)

        chirps_with_likes.each do |chirp|
            puts chirp.num_likes
        end
    end

end
