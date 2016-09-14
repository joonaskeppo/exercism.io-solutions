class Sieve
  def initialize(num)
    @num = num
  end
  def primes
    range = (2..@num).to_a
    unmarked = range.dup
    range.each do |i|
      if unmarked.include?(i)
        (2..@num/i).each do |n|
          unmarked.delete(i * n)
        end
      end
    end
    unmarked
  end
end
