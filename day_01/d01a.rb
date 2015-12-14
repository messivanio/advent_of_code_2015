#!/usr/bin/ruby

input = IO.read('input.txt')
puts input.count('(') - input.count(')')
