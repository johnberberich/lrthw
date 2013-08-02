#!/usr/bin/env ruby
# http://ruby.learncodethehardway.org/book/ex36.html

def ask(question)
	puts question
	print '> '
	gets.chomp
end


puts 'Welcome to the programming house.'
puts ask('What brings you here today?')

