# 5 points
#
# Write a program that asks for a person's first name, then middle name,
# then last name, and then greets the person using their full name.
#
# Here's how the program must work:
#
#   $ ruby exercise4.rb
#   What's your first name?
#   Samuel
#   What's your middle name?
#   Leroy
#   What's your last name?
#   Jackson
#   Nice to meet you, Samuel Leroy Jackson.

puts "What's your first name?"
first = gets.chomp
puts "What's your middle name?"
middle = gets.chomp
puts "What's your last name?"
last = gets.chomp
puts "Nice to meet you, #{first} #{middle} #{last}."

# name = ['first', 'middle', 'last'].map do |e|

# name = %w(first middle last).map do |e|
#     puts "What's your #{e} name?"
#     gets.chomp
# end
# puts "Nice to meet you, #{name.join(' ')}."
