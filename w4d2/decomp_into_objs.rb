### When decomposing problems into objects nouns = classes
## verbs are methods

class Minnow
        def initialize(initial_position)
                #keeps track of its own pos
                #this is the state of obj
                @position = initial_position
        end

        def swim
        #away from sharks
        end
end

class Shark
        def swim
        # sharks and minnows "behave" differently
        #towards minnows
        end
end

## Object oriented design breaks complex problems down 
## into classes, each responsible for its own state 
## and behavior. Minnow, sharks, aquarium, fisherman
## can all be written in isolation.
## Modular, extensible (new capabilities) and easier to reason about

## Each class should do one thing. An Aquarium class might 
## try to model fish and sharks.

## Curly's Law: Do one Thing. (Jeff Atwood)
#DRY
#Once and only once
#Single Point of Truth (complexity is a cost; don't pay twice)

# Define classes at the level of abstraction at which
# you want to make changes. FishTail too small. Aquarium too big.

## A large class is more than 125 lines of code. 300 too big.

