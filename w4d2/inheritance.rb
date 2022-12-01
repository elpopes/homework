#Inheritance is a way to establish a subtype from an existing class to reuse code

class User
        attr_reader :first_name, :last_name

        def initialize(first_name, last_name)
                @first_name, @last_name = first_name, last_name
        end

        def full_name
                "#{first_name} #{last_name}"
        end

        def upvote_article(article)
                article.upvotes += 1
        end
end

class SuperUser < User
        attr_reader :super_powers

        def initialize(first_name, last_name, super_powers)
                ## uses super to call the original def in user
                ## calls to super common in initialize
                super(first_name, last_name)
                @super_powers = super_powers
        end

        def upvote_article(article)
                article.upvotes += 3
        end

        def delete_user(user)
                return unless super_powers.include?(:user_deletion)

                puts "Goodbye, #{user.full_name}"
        end
end

## use < to denote that the SuperUser class inherits from the User class. 
## that means that the SuperUser class gets all of the the methods of the 
## User class. We say that User is the parent class or Superclass, and
## that SuperUser is the child class or subclass. so:

u = User.new("jamis", "buck")
u.full_name
su = SuperUser.new("david", "Heinemeier Hansson", [:user_deletion])
su.full_name
su.delete_user(u)

## SU overrides some of User's methods: initialize and upvote_article. The defs in superuser will be called instead.

## Inheritance and code reusue
## avoid duplicating methods common to user and superuser.
## cringe: 
class Magazine
        attr_accessor :editor
end

class Book
        attr_accessor :editor
end

## instead...

class Publication
        attr_accessor :editor
end

class Magazine < Publication

end

class Book < Publication

end

## the more two classes have in common the more it pays for them to share
## a single base class. Easier to add child classes later.

## Calling a super method
## When overriding a method, it's common to call original implementation.
## Can call superclass's implementation of any method using the super keyword
## there are two major ways inwhich super is called.
## If super is called without any arguments, the arguments passed to the method
## will be implicitly pass on the to the parrent class's implementation.

class Animal
        def make_n_noises(n = 2)
             n.times { print "growl "}  
        end
end

class Liger < Animal
        def make_n_noises(num = 4)
                num.times { print "Roar "}
                #here we call super without any arguements. this will pass on 
                #num implicitily to super. call to super is "super(num)"
                super
        end
end

Liger.new.make_n_noises(3)


## cringe:
class Animal
        attr_reader :species
        def initialize(species)
                @species = species
        end
end

class Human < Animal
        attr_reader :full_name

        def initialize(name)
                @name = name
        end
end

class Animal
        attr_reader :species

        def initialize(species)
                @species = species
        end
end

class Human < Animal
        attr_reader :name

        def initialize(name)
        #super calls the original def of method. 
        #If we hadn't passed "homo sap" to user then 'name' would
        #have been passed by default
                super("Homo Sapien")
                @name = name
        end
end

