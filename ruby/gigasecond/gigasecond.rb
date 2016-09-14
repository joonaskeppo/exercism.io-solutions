module BookKeeping
  VERSION = 4
end

class Gigasecond
  GIG = 1_000_000_000
  def self.from(moment)
    moment + GIG
  end
end
