#defining a subject for your test
describe Robot do
    subject { Robot.new }

    it "satisfies some expectation" do
        # this guy:
        expect(subject).to #...
    end
end

#declare a subject with name
describe Robot do 
    subject(:robot) { Robot.new }

    # this is the test
    it "should start at position [0, 0]" do
        # we expect position to be 00
        expect(robot.position).to eq([0, 0])
    end

    describe "move methods" do
        it "moves left" do
            # here:
            robot.move_left
            expect(robot.position).to eq([-1, 0])
        end
    end
end

# subject can except a block to construct the subject
# the it block is a test. it runs the code and the test failsif the expect fails

# use let to create other objects to interact with the subject
# works like subjecgt but lets us define helper objects
# while there can be only one subject, let defines many helpers:

describe Robot do
    subject(:robot) { Robot.new }
    # let defines a method that runs the block provided once for each spec called
    let(:light_item) { double("light_item", :weight => 1) }
    let(:max_weight_item) { double("max_weight_item", :weight => 250) }

    describe "#pick_up" do
        it "does not add item past maximum weight of 250" do
            robot.pick_up(max_weight_item)
            
            expect do
                robot.pick_up(light_item)
            end.to raise_error(ArgumentError)
        end
    end
end

# more:

# Subject blocks allow you to control the initialization of the subject under test.
# If you don't have any custom initialization required, then you're given a default 
# `subject` method already. All it does is call `new` on the class you're testing.

# Let blocks allow you to provide some input to the subject block that change in 
# various contexts. This way you can simply provide an alternative `let` block for a 
# given value and not have to duplicate the setup code for the subject over again. 
# Let blocks also work inside of `before :each` blocks if you need them.

# Its blocks allow you to test methods on the subject that return a simple value. 
# The benefit of using this over the more wordy version above is that it can actually 
# format the test output for you.

#example: 

require 'spec_helper'

describe Card do
  subject do
    Card.new(card_type)
  end
  
  describe "#value" do  
    context "Two of Hearts" do
      let(:card_type) { "2H" }
      its(:value) { should == 2 }
    end
  
    describe "Face Cards" do  
    
      context "King of Clubs" do
        let(:card_type) { "KC" }
        its(:value) { should == 13 }
      end
  
      context "Queen of Clubs" do
        let(:card_type) { "QC" }
        its(:value) { should == 12 }
      end

      context "Jack of Hearts" do
        let(:card_type) { "JH" }
        its(:value) { should == 11 }
      end
    end
    
    context "Bad Value" do
      it "should raise StandardError" do
        expect { card = Card.new("ZZ") }.to raise_error(StandardError)
      end
    end
  end
en


# let does not persist state:

class Cat
    attr_accessor :name
  
    def initialize(name)
      @name = name
    end
end
  
describe "Cat" do
    let(:cat) { Cat.new("Sennacy") }
  
    describe "name property" do
      it "returns something we can manipulate" do
        cat.name = "Rocky"
        expect(cat.name).to eq("Rocky")
      end
  
      it "does not persist state" do
        expect(cat.name).to eq("Sennacy")
       end
    end
end
  
  # => All specs pass

