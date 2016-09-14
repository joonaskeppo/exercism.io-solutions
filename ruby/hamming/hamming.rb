module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strandA, strandB)
    # Disallow different strand lengths
    if strandA.length != strandB.length
      raise ArgumentError
    end
    dist = 0
    strandA.split("").each_with_index do |ch, idx|
      if ch != strandB[idx]
        dist += 1
      end
    end
    dist
  end
end
