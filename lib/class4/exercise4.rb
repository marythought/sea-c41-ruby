#!/usr/bin/env ruby
#
# 5 points
#
# In the early days of Roman numerals, the Romans didn't bother with any of this
# new-fangled subtraction 'IX' nonsense. No sir, it was straight addition,
# biggest to littlest - so 9 was written 'VIIII' and so on.
#
# Write a method that, when passed any integer between 1 and 1000, it returns a
# string containing the proper old-school Roman numeral. In other words:
#
#   $ ruby exercise4.rb 9
#   VIIII
#
# TIP #1: Here's a mapping of Roman to Arabic numerals:
#
#   1000 = M
#    500 = D
#    100 = C
#     50 = L
#     10 = X
#      5 = V
#      1 = I
#
# TIP #2: Use the integer division and modulus methods on page 32.
#
# TIP #3: You only need to change the `old_school_roman_numeral` method.

# rubocop:disable MethodLength
# rubocop:disable EachWithObject

def old_school_roman_numeral(num)
  letters = { 1000 => 'M', 500 => 'D', 100 => 'C', 50 => 'L', 10 => 'X',
              5 => 'V', 1 => 'I' }
  if letters.key?(num)
    return letters[num]
  else
    letters.sort_by { |k, _v| k }.reverse!
    letters.keys.reduce('') do |result, key|
      while num / key > 0 && num > 0
        result += letters[key]
        num -= key
      end
      result
    end
  end
end

# figuring out the loop with 23 as example:
# num < letters.keys[0]? y
# num < letters.keys[1]? y
# num < letters.keys[2]?
# num < letters.keys[3]? NO...
#   numeral = letters.values[2] ("X")
#   num -= letters.keys[2]
#   num == 13
#   # DO THE LOOP ABOVE AGAIN
#     num < letters.keys[0]? y
#     num < letters.keys[1]? y
#     num < letters.keys[2]? y
#     num < letters.keys[3] NO....
#       numeral += letters.values[2] ("X")
#       num -= letters.keys[2]
#       num == 3
#       #DO THE LOOP AGAIN
#         num < letters.keys[0]? y
#         num < letters.keys[1]? NO
#           numeral += letters.keys[0]
#           num -= letters.keys[0]
#           num == 2
#             num < letters.keys[0]? y
#             num < letters.keys[1]? NO
#               numeral += letters.keys[0]
#               num -= letters.keys[0]
#               num == 1
# NUM IS EQUAL TO 1, SO LOOP ENDS, add "I" before ending?

input = ARGV[0].to_i

abort 'Usage: exercise4.rb [1-1000]' unless input.between?(1, 1000)

puts old_school_roman_numeral(input)
