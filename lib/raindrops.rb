class Raindrops

  def convert(number)
    number_is_a?(number)
    number_is_not_zero?(number)
    check_factor(number)
  end

  def check_factor(number)
    factor_num = ''
    factor_num = 1 if number == 1
    factor_num += 'Pling' if (number % 3).zero?
    factor_num += 'Plang' if (number % 5).zero?
    factor_num += 'Plong' if (number % 7).zero?
    factor_num = number if factor_num == ''
    factor_num
  end

  def number_is_a?(number)
    raise 'You must enter a number!' unless number.is_a? Integer
  end

  def number_is_not_zero?(number)
    raise 'Number must be positive' if number < 0
  end
end
