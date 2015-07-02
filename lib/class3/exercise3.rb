# 5 points
#
# What if Nana doesn't want you to leave? Copy your solution to exercise2 and
# paste it here. Modify the program so that you have to type 'BYE' three times
# **in a row** to stop the conversation.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
#
# If you shout 'BYE' three times, but not in a row, you should still be talking
# to Nana.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   I HAVE TO GO NOW
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!

bye = false
puts 'Nana: HI SWEETIE! GIVE NANA A KISS!'
while bye == false
  response = gets.chomp
  if response == 'BYE'
    bye = true
    puts 'Nana: HOW\'S SCHOOL GOING?'
    response = gets.chomp
    if response == 'BYE'
      puts 'Nana: HOW\'S SCHOOL GOING?'
      response = gets.chomp
      if response == 'BYE'
        puts 'Nana: BYE SWEETIE!'
        break
      else
        bye = false
      end
    else
      bye = false
    end
  else
    bye = false
  end
  if response == response.upcase
    puts 'Nana: NOT SINCE ' + rand(1930..1951).to_s + '!'
  else
    puts 'Nana: HUH?! SPEAK UP, SWEETIE!'
  end
end
