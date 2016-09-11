# September 11th, 2016
# hamming.rb
# Write a program that can calculate the Hamming difference between two DNA strands.

class Hamming
  def self.compute(string1, string2)
    count = 0
    if string1.length != string2.length
      raise ArgumentError
    end

    string1.upcase!
    string2.upcase!

    string1.length.times do |i|
      if string1[i] != string2[i]
        count += 1
      end
    end

    return count
  end
end
