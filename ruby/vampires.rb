

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

user_input = nil
until ["y","n"].include? user_input
puts "Our company cafeteria serves garlic bread. Should we order some for you?"


# garlic_in = nil

# until garlic_in = gets[0] == "y" || "n"
#   puts "Please enter yes or no."
# end
#   garlic_bread = gets[0] == 'y'


# puts "Would you like to enroll in the company's health insurance?"
# health_insurance = gets.chomp.downcase

#   case health_insurance.
#     when "yes", "y"
#       health_insurance = True
#     when "no", "n"
#       health_insurance = False
#     else
#       puts "Please enter yes or no."
#   end

  puts name
  puts age
  puts birth_year
  puts garlic_bread
  puts health_insurance

 # if age == 2016 - birth_year && ( garlic_bread == yes ||
 # else