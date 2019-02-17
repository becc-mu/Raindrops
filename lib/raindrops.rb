class Raindrops
  def convert(number)
    factor_num = ''
    raise 'You must enter a number!' unless number.is_a? Numeric
    raise 'Number must be positive' if number < 0

    factor_num = 1 if number == 1
    if (number % 3).zero? && (number % 5).zero? && (number % 7).zero?
      factor_num += 'PlingPlangPlong'
    elsif (number % 3).zero? && (number % 5).zero?
      factor_num += 'PlingPlang'
    elsif (number % 3).zero? && (number % 7).zero?
      factor_num += 'PlingPlong'
    elsif (number % 5).zero? && (number % 7).zero?
      factor_num += 'PlangPlong'
    elsif (number % 3).zero?
      factor_num += 'Pling'
    elsif (number % 5).zero?
      factor_num += 'Plang'
    elsif (number % 7).zero?
      factor_num += 'Plong'
    else
      factor_num = number
    end
    factor_num
  end
end
