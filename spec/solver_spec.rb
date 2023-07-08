require_relative '../solver'

describe Solver do
  let(:solver) { Solver.new }
  let(:factorial_zero) { solver.get_factorial(0) }
  let(:factorial_minus_number) { solver.get_factorial(-2) }
  let(:reverse_string) { solver.reverse_string('Hello') }
  let(:fizzbuzz) { solver.fizzbuzz(15) }
  let(:fizz) { solver.fizzbuzz(3) }
  let(:buzz) { solver.fizzbuzz(5) }
  let(:number) { solver.fizzbuzz(7) }

  it 'is a class' do
    expect(Solver).to be_a(Class)
  end

  it 'factorial 5 must be 120' do
    expect(solver.get_factorial(5)).to eq(120)
  end

  it 'factorial 0 must be 1' do
    expect(factorial_zero).to eq(1)
  end

  it 'factorial -2 must be raise ArgumentError' do
    expect { factorial_minus_number }.to raise_error(ArgumentError)
  end

  it 'reverse string Hello must be olleH' do
    expect(reverse_string).to eq('olleH')
  end

  it 'fizzbuzz 15 must be FizzBuzz' do
    expect(fizzbuzz).to eq('FizzBuzz')
  end

  it 'fizzbuzz 3 must be Fizz' do
    expect(fizz).to eq('Fizz')
  end

  it 'fizzbuzz 5 must be Buzz' do
    expect(buzz).to eq('Buzz')
  end

  it 'fizzbuzz 7 must be \'7\'' do
    expect(number).to eq('7')
  end
end
