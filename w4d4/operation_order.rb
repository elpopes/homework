# Rspec require that the subject be declared outside of it blocks 
RSpec.describe Deck do
    describe '#initialize' do
      subject(:deck) { Deck.new } # yup
  
      it 'initializes with 52 cards' do
        expect(deck.count).to eq(52)
      end
    end
end

# Correct order of operations:
RSpec.describe Sloth do
    subject(:sloth) { Sloth.new("Herald") }
  
    describe "#run" do
      context "when a valid direction is given" do
        it "returns a string that includes the direction" do
          expect(sloth.run("north")).to include("north")
        end
      end
  
      context "when an incorrect direction is given" do
        it "raises ArgumentError" do
          expect { sloth.run("somewhere") }.to raise_error(ArgumentError)
        end
      end
  
    end
end