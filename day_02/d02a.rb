#!/usr/bin/ruby

def side_areas(dimentions)
  return dimentions[0] * dimentions[1], dimentions[1] * dimentions[2], dimentions[2] * dimentions[0]
end

def square_feet_of_wrapping_paper(dimentions)
  side_areas = side_areas(dimentions)
  2 * side_areas.inject(&:+) + side_areas.min
end

square_feet = File.readlines('input.txt').each.map do |line|
  square_feet_of_wrapping_paper(line.strip.split('x').map(&:to_i))
end

p square_feet.inject(&:+)
