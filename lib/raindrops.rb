class Raindrops
  def convert(number)
    raise 'You must enter a number!' unless number.is_a? Numeric
    raise 'Number must be positive' if number < 0
  end
end
