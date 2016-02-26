require 'rspec'
require_relative '../fizz_buzz'



describe 'fizzBuzz ' do

  before do
    @fizz_buzz = FizzBuzz.new
  end
context 'When its not a multiple of 3 or 5'  do
  context 'the method transformNormalNumberToFizzBuzzNumber' do
    it 'should return 1 as a string if you pass as parameter the integer 1' do
      expect(@fizz_buzz.transform_normal_number_to_fizz_buzz_number(1)).to eq ('1')
    end

    it 'should return 2 as a string if you pass as parameter the integer 2' do
      expect(@fizz_buzz.transform_normal_number_to_fizz_buzz_number(2)).to eq ('2')
    end
  end
end

  context 'When the number its a multiple of 3'  do
    it 'should return fizz for int 3' do
      expect(@fizz_buzz.transform_normal_number_to_fizz_buzz_number(3)).to eq ('fizz')
    end

    it 'should return fizz for int 9'do
      expect(@fizz_buzz.transform_normal_number_to_fizz_buzz_number(9)).to eq ('fizz')
    end
  end
  context 'When the number its a multiple of 5'  do
    it 'should return buzz for int 5'do
      expect(@fizz_buzz.transform_normal_number_to_fizz_buzz_number(5)).to eq ('buzz')
    end
    it 'should return buzz for int 20'do
      expect(@fizz_buzz.transform_normal_number_to_fizz_buzz_number(20)).to eq ('buzz')
    end

  end
  context 'When the number its a multiple of 3 and 5'  do
    it 'should return fizzbuzz for int 15'do
      expect(@fizz_buzz.transform_normal_number_to_fizz_buzz_number(15)).to eq ('fizzbuzz')
    end
    it 'should return fizzbuzz for int 60'do
      expect(@fizz_buzz.transform_normal_number_to_fizz_buzz_number(60)).to eq ('fizzbuzz')
    end
  end

  it 'should get the rules of the game' do
    rules = @fizz_buzz.get_rules
    expect(rules[3]).to be == 'fizz'
  end
  it 'should add a rule to the game'do
    @fizz_buzz.add_rule(2, 'toto')
    expect(@fizz_buzz.get_rules[2]). to be == 'toto'
    expect(@fizz_buzz.get_rules.length).to eq (3)
  end
  context 'After adding the rule for multiple of 2'do
    it 'should return toto for int 2'do
      @fizz_buzz.add_rule(2, 'toto')
      expect(@fizz_buzz.transform_normal_number_to_fizz_buzz_number(2)).to eq ('toto')
    end

    it 'should return fizzbuzztoto for int 60' do
      @fizz_buzz.add_rule(2, 'toto')
      expect(@fizz_buzz.transform_normal_number_to_fizz_buzz_number(60)).to eq ('fizzbuzztoto')
    end

  end
  it 'should return 12fizz4buzzfizz for array of int [1, 2, 3, 4, 5, 6]'do
    arrayOfNumbers = [1, 2, 3, 4, 5, 6]
    expect(@fizz_buzz.transform_array_numbers(arrayOfNumbers)).to eq ('12fizz4buzzfizz')
  end

end

