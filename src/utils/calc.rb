# frozen_string_literal: true

# Class base calc
class Calc
  class ValidateNumberError < StandardError; end

  attr_reader :number1, :number2

  def initialize(number1, number2)
    @number1 = number1
    @number2 = number2
  end

  def valid?
    number1 >= 0 && number2 >= 0
  end

  def valid
    raise ValidateNumberError('Invalid number') unless valid?
  end

  def sum
    number1 + number2
  end

  def subtract
    number1 - number2
  end

  def multiply
    number1 * number2
  end

  def divide
    number1 / number2
  end
end
