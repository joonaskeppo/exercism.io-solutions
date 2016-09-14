module BookKeeping
  VERSION = 2
end

class Raindrops
  def self.convert(num)
    res = ''
    res += (num % 3 == 0 ? 'Pling' : '')
    res += (num % 5 == 0 ? 'Plang' : '')
    res += (num % 7 == 0 ? 'Plong' : '')
    return (res == '' ? num.to_s : res)
  end
end
