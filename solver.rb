class Solver
  def get_factorial(number)
    return 1 if number.zero?
    raise ArgumentError if number.negative?

    get_factorial(number - 1) * number
  end

  def fizzbuzz(number)
    return 'FizzBuzz' if (number % 15).zero?
    return 'Fizz' if (number % 3).zero?
    return 'Buzz' if (number % 5).zero?
    return number.to_s if number.is_a? Integer
    number
  end

  def reverse_string(string)
    string.reverse
  end
end
