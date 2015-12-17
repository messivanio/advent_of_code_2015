VOWELS = %q(a e i o u)
FORBIDEN = %w(ab cd pq xy)

def has_more_than_two_vowels(string)
	string.chars.select{|x| VOWELS.include?(x)}.count > 2
end

def has_same_two_chars_in_a_row(string)
	string.match(/((.)\2)/) != nil
end

def dont_have_forbiden_strings(string)
	FORBIDEN.none? {|f| string.include?(f)}
end

def is_nice(string)
	has_more_than_two_vowels(string) and
	has_same_two_chars_in_a_row(string) and
	dont_have_forbiden_strings(string)
end

nice_strings = File.readlines('input.txt').select do |line|
	is_nice(line.strip)
end

p nice_strings.uniq.count
