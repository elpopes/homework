require 'rspec'
require 'hello'

describe '#hello_world' do
    it "returns 'Hello, World!'" do
        expect(hello_world).to eq("Hello, World!")
    end
end

describe Student do
    context 'when a current student' do
        ...
    end
    
    context 'when graduated' do
        ...
    end
    
end

# argument construction is preferred:

describe Integer do
    describe '#to_s' do
    it 'returns string representations of integers' do
        expect(5.to_s).to eq('5')
    end
end

# block construction is necessary when test for error:
describe '#sqrt' do
    it 'throws an error if given negative number' do
        expect { sqrt(-3) }.to raise_error(ArgumentError)
    end
end
    end
end
