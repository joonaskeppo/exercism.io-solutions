module BookKeeping
  VERSION = 2
end

class Pangram
  def self.is_pangram?(str)
    str = str.downcase
    ('a'..'z').each { |l| if str[l] == nil then return false end }
    return true
  end
end
