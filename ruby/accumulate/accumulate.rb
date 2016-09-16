class Array
  def accumulate
    mapped = []
    self.each { |i| mapped << (yield i ) }
    mapped
  end
end
