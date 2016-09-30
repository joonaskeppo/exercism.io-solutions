class Series
  def initialize(str)
    @original = str
  end

  def slices(n)
    strs = []
    raise ArgumentError if n > @original.length
    @original.length.times do |start_idx|
      slice = @original[start_idx..(start_idx + n - 1)]
      arr = slice.split('').collect(&:to_i)
      strs.push(arr) if slice.length == n
    end
    strs
  end
end
