FactoryBot.define do
    Factory :chirp do
        body { "It's chirpalicious!!!"}
        association :author, factory: :user
    end
end