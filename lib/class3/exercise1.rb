# 5 points
#
# Write a program that displays the lyrics to the beloved nursery rhyme
# "3 Bottles of Beer on the Wall".
#
# Here"s how the program must work:
#
#   $ ruby exercise1.rb
#   3 bottles of beer on the wall, 3 bottles of beer!
#   Take one down, pass it around, 2 bottles of beer on the wall!
#   2 bottles of beer on the wall, 2 bottles of beer!
#   Take one down, pass it around, 1 bottle of beer on the wall!
#   1 bottle of beer on the wall, 1 bottle of beer!
#   Take one down, pass it around, no more bottles of beer on the wall!
#   No more bottles of beer on the wall, no more bottles of beer!
#   Go to the store and buy some more, 3 bottles of beer on the wall!
#
# TIP: I expect you to use a loop.

beers = ['3 bottles', '2 bottles', '1 bottle', 'no more bottles']

beers.length.times do |i|
  if beers[i] == beers[-1]
    puts "#{beers[i].capitalize} of beer on the wall, #{beers[i]} of beer!"
    puts "Go to the store and buy some more, #{beers[0]}" \
         ' of beer on the wall!'
  else
    puts "#{beers[i]} of beer on the wall, #{beers[i]} of beer!"
    puts "Take one down, pass it around, #{beers[i + 1]}" \
         ' of beer on the wall!'
  end
end

# 10.times do
#   puts 'hello'
# end

# 10.times do |i|
#   puts i
# end
