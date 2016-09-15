class Bob
  def hey(remark)
    if remark.upcase == remark && remark =~ /[A-Z]+/
      return "Whoa, chill out!"
    elsif remark =~ /\A[^0-9a-zA-Z]*\z/
      return "Fine. Be that way!"
    elsif remark[-1] == '?'
      return "Sure."
    end
    return "Whatever."
  end
end
