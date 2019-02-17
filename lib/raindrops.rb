class Raindrops
  def convert(number)
    factor_num = ''
    raise 'You must enter a number!' unless number.is_a? Numeric
    raise 'Number must be positive' if number < 0

    factor_num = 1 if number == 1

    if (number % 3).zero?
      factor_num += 'Pling'
    elsif (number % 5).zero?
      factor_num += 'Plang'
    elsif (number % 7).zero?
      factor_num += 'Plong'
    end
    factor_num
  end
end
