class PhoneNumber
  def initialize(number)
    @number = number
  end

  def number
    all_chars = @number.split('').select { |ch| !ch.match(/\w/).nil? }
    digits = @number.split('').select { |ch| !ch.match(/[0-9]/).nil? }
    number = digits.join('')
    len = digits.length
    if all_chars == digits
      return number[1..(len - 1)] if len == 11 && number[0] == '1'
      return number if len == 10
    end
    Array.new(10, 0).join('')
  end

  def area_code
    number[0..2]
  end

  def to_s
    num = number
    "(#{num[0..2]}) #{num[3..5]}-#{num[6..(num.length - 1)]}"
  end
end
