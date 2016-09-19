puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

user_input = nil
until ["yes","no","y","n"].include? user_input
  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  user_input = gets.chomp
end

if user_input[0] == 'y'
  garlic_bread = TRUE
elsif user_input[0] == 'n'
  garlic_bread = FALSE
end

user_input = nil
until ["yes","no","y","n"].include? user_input
  puts "Would you like to enroll in the company's health insurance?"
  user_input = gets.chomp
end

if user_input[0] == 'y'
  health_insurance = TRUE
elsif user_input[0] == 'n'
  health_insurance = FALSE
end

result = nil

if age == (2016 - birth_year) && ( garlic_bread || health_insurance )
  result = "Probably not a vampire."
elsif age != (2016 - birth_year) && ( !garlic_bread || !health_insurance )
  result = "Probably a vampire."
elsif age != (2016 - birth_year) && !garlic_bread && !health_insurance
  result = "Almost certainly a vampire."
elsif name == "Drake Cula" || name == "Tu Fang"
  result = "Definitely a vampire."
else
  result = "Results inconclusive."
end

puts result