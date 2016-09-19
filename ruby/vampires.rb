puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

user_input = nil
until ["y","n"].include? user_input
  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  user_input = gets.chomp
end

if user_input[0] == 'y'
  garlic_bread = TRUE
elsif user_input[0] == 'n'
  garlic_bread = FALSE
end

user_input = nil
until ["y","n"].include? user_input
  puts "Would you like to enroll in the company's health insurance?"
  user_input = gets.chomp
end

if user_input[0] == 'y'
  health_insurance = TRUE
elsif user_input[0] == 'n'
  health_insurance = FALSE
end

puts name
puts age
puts birth_year
puts garlic_bread
puts health_insurance

 # if age == 2016 - birth_year && ( garlic_bread == yes ||
 # else