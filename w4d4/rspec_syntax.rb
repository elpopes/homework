#Rspec Syntax & Mechanics
# Rspec is distributed in a meta gem call rspec that packages core, expectations and mocks


# it is rspecs most basic test unit where individual tests will go.

# describe is rspecs unit of organization, gathering several it blocks into a single unit.

# Describe and It take strings as arguments
# describe takes "#method" for instance meths and "::method" for class
# for It describe behavior testing inside it block
# describe can take constant, name of class or mod being tested.

# Descrivbve blocks can be nested. Consider context an alias for describe

# expect does the work of testing the code
# matches value code generates and expected value, for example:
# expect(test_value).to ...
# expect(test_value).to_not

expect('hello').to eq('hello') # => passes ('hello' == 'hello')
expect('hello').to be('hello') # => fails (strings are different objects)

#Use before block to set up context in which specs will run:
describe Chess do
    let(:board) { Board.new }

    describe '#checkmate?' do
        context 'when in checkmate' do
            before(:each) do
                board.make_move([3, 4], [2, 3])
                board.make_move([1, 2], [4, 5])
                board.make_move([5, 3], [5, 1])
                board.make_move([6, 3], [2, 4])
            end

            it 'should return true' do
                expect(board.checkmate?(:black)).to be true
            end
        end
    end
end
# Pending Specs
#Leave off the do---end from the it:
describe '#valid_move?'
    it 'should return false for wrong colored pieces'
    it 'should return false for moves that are off the board'
    it 'should return false for moves that put you in check'
end

# conjugate verbs:
expect(my_hash.hash_key?(my_key)).to eq(true)
# can be
expect(my_hash).to have_key(my_key)