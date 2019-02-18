class Raindrops

  def convert(number)
    number_is_a?(number)
    number_is_not_zero?(number)
    check_factor(number)
  end


  def check_factor(number)
    factor_num = ''
    factor_num += 'Pling' if get_factor(number, 3)
    factor_num += 'Plang' if get_factor(number, 5)
    factor_num += 'Plong' if get_factor(number, 7)
    factor_num = number if factor_num == ''
    factor_num
  end


  def get_factor(number, factor)
        (number % factor).zero?
  end

  def number_is_a?(number)
    raise 'You must enter a number!' unless number.is_a? Integer
  end

  def number_is_not_zero?(number)
    raise 'Number must be positive' if number < 0
  end

end
