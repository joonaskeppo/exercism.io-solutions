module BookKeeping
  VERSION = 2
end

class RunLengthEncoding
  def self.encode(input)
    encoded = []
    input.split("").to_a.each do |ch|
      if encoded.empty?
        encoded[0] = ch
        next
      end
      last_ch = (encoded[-1].is_a?(String) && encoded[-1]) || encoded[-1][1]
      count_last = (encoded[-1].is_a?(Array) && encoded[-1][0]) || 1
      if last_ch == ch
        encoded[-1] = [count_last + 1, last_ch]
      else
        encoded << ch
      end
    end
    encoded.join("")
  end

  def self.decode(input)
    group_regex = /(\d+[^\d])|([^\d](?<!\d))/
    grouped = input.split(group_regex).select { |i| !i.empty? }
    return grouped.inject("") do |str, i|
      ch_count = 1
      ch = i
      if i =~ /([0-9]+)(.)/
        ch_count = $1.to_i
        ch = $2
      end
      str += ch * ch_count
    end
  end
end
