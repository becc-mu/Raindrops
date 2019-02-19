require_relative 'calculate'

class Raindrops

  include Calculate

  def convert(number)
    check_factor(number)
  end

  def check_factor(number, factor_num = '')
    factor_num += 'Pling' if get_factor(number, 3)
    factor_num += 'Plang' if get_factor(number, 5)
    factor_num += 'Plong' if get_factor(number, 7)
    factor_num = number if factor_num == ''
    factor_num
  end
end
