#!/usr/bin/env ruby
# http://ruby.learncodethehardway.org/book/ex33.html


def make_sequence_of_numbers(count, increment = 1)
	numbers = []
	(0..count-1).each {|n|
		numbers.push(n*increment)
	}
	numbers
end


def print_list_of_numbers(numbers)
	for num in numbers
		puts num
	end
end


puts "ORIGINAL CODE"

i = 0
numbers = []

while i < 6
	puts "At the top i is #{i}"
	numbers.push(i)

	i = i + 1
	puts "Numbers now: #{numbers}"
	puts "At the bottom i is #{i}"
end

puts "The numbers: "

for num in numbers
	puts num
end


puts "MY CODE CALLING THE NEW FUNCTIONS"

puts "A 12 number sequence:"
numbers = make_sequence_of_numbers(12)
print_list_of_numbers(numbers)

puts "A 12 number sequence of multiples of two:"
multiples_of_two = make_sequence_of_numbers(12, 2)
print_list_of_numbers(multiples_of_two)

puts "And now multiples of three:"
multis_of_three = make_sequence_of_numbers(12, 3)
print_list_of_numbers(multis_of_three)

