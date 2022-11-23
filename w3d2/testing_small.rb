class Card
    def initialize(card)
        @card = card
        @face_up = true
    end
    attr_accessor :face_up, :card
    def hide
        @face_up = false
    end
end


class Card
    def initialize(card)
        @card = card
        @face_up = true
    end
    attr_accessor :face_up, :card
    def hide
        face_up = false
    end
end

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
jack = Card.new(:jack)
jack.hide

def print_chars(num)
    char_str = ""
    num.times{|i| char_str << "X"}
    puts char_str
end