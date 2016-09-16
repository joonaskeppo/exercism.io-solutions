module BookKeeping
  VERSION = 2
end

class Binary
  def initialize(num)
    ns = num.split('').to_a.collect { |i| i.to_i }  # "1011" -> [1, 0, 1, 1]
    if num =~ /[^01]/                               # Only accept 1s and 0s
      raise ArgumentError
    end
    @num = ns
  end
  def to_decimal
    @num.each_with_index.inject(0) do |sum, (val, idx)|
      col = @num.length - idx - 1                    # column (i.e. power of 2)
      sum += val * 2**col
    end
  end
end
