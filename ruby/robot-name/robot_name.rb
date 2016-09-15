module BookKeeping
  VERSION = 2
end

class Robot
  @@names = []
  attr_reader :name
  def initialize
    reset
  end
  def reset
    @name = (('A'..'Z').to_a.shuffle[0..1] + (0..9).to_a.shuffle[0..2]).join("")
    if @@names.include?(@name)
      reset
    else
      @@names << @name
    end
  end
end
