#!/usr/bin/env ruby
# http://ruby.learncodethehardway.org/book/ex17.html

from_file, to_file = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line too, how?
#input = File.open(from_file)
#indata = input.read()
indata = File.open(from_file) { |input| input.read() }

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exists? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets

#output = File.open(to_file, 'w')
#output.write(indata)
File.open(to_file, 'w') { |output| output.write(indata) }

puts "Alright, all done."

#output.close()
#input.close()

