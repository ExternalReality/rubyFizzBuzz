require './fizzbuzz'

RSpec.describe FizzBuzz, "#call" do
  context 'calling fizzbuzz'  do
    let (:fizzbuzz) {FizzBuzz.new()}
    it 'never raises error on negative numbers' do
      expect {fizzbuzz.call(-1)}.to raise_error (ParamContractError)
    end
    it 'the number'  do
      expect(fizzbuzz.call(1)).to eq "1"
    end
    it 'Fizz'  do
      expect(fizzbuzz.call(3)).to eq "Fizz"
    end
    it 'Buzz'  do
      expect(fizzbuzz.call(5)).to eq "Buzz"
    end
    it 'FizzBuzz'  do
      expect(fizzbuzz.call(15)).to eq "FizzBuzz"
    end
  end
end
