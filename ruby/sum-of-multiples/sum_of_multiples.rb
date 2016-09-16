class SumOfMultiples
  def initialize(*nums)
    @nums = Array.new(nums)
  end
  def to(num)
    # Can't be less than all of the @nums values
    if @nums.inject(true) { |is_valid, i| is_valid && (num < i) }
      return 0
    end
    # Select only ones that are divisible by at least one @nums value
    mults = (1..(num-1)).select do |i|
      @nums.inject(false) { |is_div, j| is_div || i % j == 0 }
    end
    # Sum up the multiples
    mults.reduce(:+)
  end
end
