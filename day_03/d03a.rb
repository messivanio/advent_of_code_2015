#!/usr/bin/ruby

require "matrix"

DIRECTIONS = {'^' => Vector[0, 1],
              'v' => Vector[0, -1],
              '<' => Vector[-1, 0],
              '>' => Vector[1, 0] }

location = Vector[0, 0]
visited_locations = []
input = IO.read('input.txt')

input.each_char do |c|
  location += DIRECTIONS[c]
  visited_locations << location
end

p visited_locations.uniq.count
