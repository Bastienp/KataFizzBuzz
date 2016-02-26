class FizzBuzz

  def initialize
    @multiple_rule = {3 => 'fizz', 5 => 'buzz'}
  end

  def transform_normal_number_to_fizz_buzz_number(number)
    result = ''
    @multiple_rule.each do |multiple, string|
      if number % multiple == 0
        result += string
      end
    end
    if result == ''
      result = number.to_s
    end

    return result
  end

  def addRule(number, string)
    @multiple_rule[number] = string
  end

  def get_rules
    return @multiple_rule
  end

  def transform_array_numbers(arrayOfNumbers)
    resultArray =''
    arrayOfNumbers.each { |number| resultArray += transform_normal_number_to_fizz_buzz_number(number)}
    return resultArray
  end

end
