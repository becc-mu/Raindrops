class Raindrops
  def convert(number)
    factor_num = ''
    raise 'You must enter a number!' unless number.is_a? Numeric
    raise 'Number must be positive' if number < 0
    factor_num = 1 if number == 1
  end
end
