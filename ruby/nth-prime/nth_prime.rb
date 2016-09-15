class Prime
  @@primes = [2, 3]
  def self.nth(n)
    if n == 0
      raise ArgumentError
    elsif n <= @@primes.length
      return @@primes[n-1]
    end
    current = @@primes.last + 2
    while n > @@primes.length
      if [2, *(3..Math.sqrt(current)).step(2)].none? { |i| current % i == 0 }
        @@primes << current
      end
      current += 2
    end
    @@primes.last
  end
end
