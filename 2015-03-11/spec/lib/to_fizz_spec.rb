require_relative '../../lib/to_fizz'

describe 'Fixnum#to_fizz' do
  it 'is a method of a Fixnum' do
    expect(1.respond_to?(:to_fizz)).to be_truthy
  end

  it 'returns 1 if called on 1' do
    expect(1.to_fizz).to eq(1)
  end

  it 'returns \'Fizz\' if called on 3' do
    expect(3.to_fizz).to eq('Fizz')
  end

  it 'returns \'Buzz\' if called on 5' do
    expect(5.to_fizz).to eq('Buzz')
  end

  it 'returns \'FizzBuzz\' if called on 15' do
    expect(15.to_fizz).to eq('FizzBuzz')
  end
end
