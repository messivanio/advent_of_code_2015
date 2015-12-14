#!/usr/bin/ruby

def smallest_sides(dimentions)
  clone = dimentions.clone
  clone.delete_at(clone.index(clone.max))
  clone
end

def ribbbon_length(dimentions)
  2 * smallest_sides(dimentions).inject(&:+) + dimentions.inject(&:*)
end

ribbbon_lengths = File.readlines('input.txt').each.map do |line|
  ribbbon_length(line.strip.split('x').map(&:to_i))
end

p ribbbon_lengths.inject(&:+)
