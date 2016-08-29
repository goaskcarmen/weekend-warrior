#August 27th 2016
#Write a program that prints out all of the lyrics to the traditional song The Twelve Days of Christmas.

#require 'awesome_print'

class Xmas
  # attr_reader :song_array
  @song_array = []
  File.open("12days.txt", 'r').each do |line|
    @song_array << line
  end

  def initialize
  end

  def self.verse(num)
    @@verse_array = []
    @@empty_index_array = []

    @song_array.length.times do |i|
      if @song_array[i] == "\n"
        @@empty_index_array << i
      end
    end

      if num == 0
        @@verse_array = @song_array.slice(0...@song_array.index("\n"))
      elsif num == @@empty_index_array.length
        n = @@empty_index_array.last + 1
        @@verse_array = @song_array.slice(n..-1)
      else
        (@@empty_index_array[num-1]+1..@@empty_index_array[num]).each do |j|
          @@verse_array << @song_array[j]
        end
      end
      #I can         (@@empty_index_array[num-1]+1..@@empty_index_array[num]-1).each do |j| to avoid using .strip at the return line.

    return @@verse_array.join.strip
  end

  def self.gifts(num)
    return verse(num).split("\n").drop(1)
  end

  def self.sing
    return @song_array.join.strip
  end
end
