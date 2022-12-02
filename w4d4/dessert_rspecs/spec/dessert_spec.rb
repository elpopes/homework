require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Lorenzo") }
  let(:cobbler) { Dessert.new("cobbler", 25, chef) }

  describe "#initialize" do
    it "sets a type" do
        expect(cobbler.type).to eq("cobbler")
    end

    it "sets a quantity" do
        expect(cobbler.quantity).to eq(25)
    end

    it "starts ingredients as an empty array" do
        expect(brownie.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
        expect { Dessert.new("fishcakes", "a million", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
        cobbler.add_ingredient("peaches")
        expect(cobbler.ingredients).to include("peaches")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
    ingredients = ["peaches", "flour", "sugar", "eggs", "butter"]

    ingredients.each do |ingredient|
        cobbler.add_ingredient(ingredient)
    end

    expect(cobbler.ingredients).to eq(ingredients)
    browne.mix!
    expect(cobbler.ingredients).not_to eq(ingredients)
    expect(cobbler.ingredients.sort).to eq(ingredients.sort)
  end
end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
        cobbler.eat(5)
        expect(cobbler.quanity).to eq(20)
    end


    it "raises an error if the amount is greater than the quantity" do
        expect { cobbler.eat(50)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
