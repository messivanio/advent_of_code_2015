#!/usr/bin/ruby

def floor(str)
  str.count('(') - str.count(')')
end

input = IO.read('input.txt')

(0..input.size).each do |i|
  if floor(input.slice(0, i)) == -1
    puts i
    exit
  end
end
