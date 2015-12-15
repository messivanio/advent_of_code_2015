#!/usr/bin/ruby

require "matrix"

DIRECTIONS = {'^' => Vector[0, 1],
              'v' => Vector[0, -1],
              '<' => Vector[-1, 0],
              '>' => Vector[1, 0] }

class GiftDeliveryman

  attr_accessor :location
  attr_accessor :visited_locations

  def initialize
    @location = Vector[0, 0]
    @visited_locations = []
  end

  def change_location(direction)
    return unless direction
    @location += DIRECTIONS[direction]
    @visited_locations << @location
  end

end

santa = GiftDeliveryman.new
roboSanta = GiftDeliveryman.new

input = IO.read('input.txt')

input.scan(/../).each do |pair_directions|
  santa.change_location(pair_directions[0])
  roboSanta.change_location(pair_directions[1])
end

p  (santa.visited_locations + roboSanta.visited_locations).uniq.count
