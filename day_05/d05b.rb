def contais_two_letters_that_appears_at_least_twice(string)
	string.match(/(..).*\1/) != nil
end

def contains_one_letter_which_repeats_with_one_letter_between_them(string)
	string.match(/(.).\1/) != nil
end

def is_nice(string)
	contains_one_letter_which_repeats_with_one_letter_between_them(string) and
	contais_two_letters_that_appears_at_least_twice(string)
end

nice_strings = File.readlines('input.txt').select do |line|
	is_nice(line.strip)
end

p nice_strings.uniq.count
