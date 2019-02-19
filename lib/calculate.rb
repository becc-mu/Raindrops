module Calculate

  def get_factor(number, factor)
    number_is_a?(number)
    number_is_not_zero?(number)
    (number % factor).zero?
  end

  def number_is_a?(number)
    raise 'You must enter a number!' unless number.is_a? Integer
  end

  def number_is_not_zero?(number)
    raise 'Number must be positive' if number < 0
  end
end
