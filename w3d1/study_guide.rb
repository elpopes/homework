 class FaceEater
    attr_reader :face, :house, :killer
    def initialize(people_hash, n_rooms)
        @face = Face.new(facial_hair)
        @house = House.new(rooms)
        @killer = Killer.new
        @facial_hair = facial_hair
    end


end