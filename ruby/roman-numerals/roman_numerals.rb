module BookKeeping
  VERSION = 2
end

class Integer
  def to_roman
    romans = {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }
    rem = self
    roman_str = ''
    (romans.keys).each do |val|
      while rem % val < rem
        roman_str += romans[val]
        rem -= val
      end
    end
    roman_str
  end
end
