#private methods are only accessible from within the class

class Airplane
        def fly
                start engine
                ...
        end

        private
        def start_engine
                ...
        end
end

## everything after private keyword is class only
## Instance variables are always private in the sense
## that they are not methods. You can expose ivars to 
## outside world with getters/setters. 

## details exposed to user will be relied on by user 
## harder to change.

## minimize interfaces between class. expose least poss 
## amount of state and bahavior. Have a reason for exposing

#Obviously Internal to workinsg of class