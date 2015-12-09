require 'contracts'

class FizzBuzz
  include Contracts::Core
  include Contracts::Builtin

  Contract Nat => Or['Fizz', 'Buzz', 'FizzBuzz', /^[0-9]*$/]
  def call(number)
    divisibleBy3 = (number % 3 == 0)
    divisibleBy5 = (number % 5 == 0)

    case
    when divisibleBy3 && divisibleBy5
      "FizzBuzz"
    when divisibleBy3
      "Fizz"
    when divisibleBy5
      "Buzz"
    else 
      number.to_s
    end
  end
end
