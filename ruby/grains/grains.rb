class Grains
  def self.square(n)
    (1..n).inject(1) { |total, i| i == 1 ? total : total * 2 }
  end
  def self.total
    (1..64).inject(0) { |total, i| total + self.square(i) }
  end
end
