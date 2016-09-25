# #Pseudocode
# create hash of keys with empty values to store client data.
# method to validate int input
# method to iterate through hash, asking for user input, validating and formatting  input using int validation method, and saving input as values.
# method to ask user about updating a value or exit with 'none' input
# driver code to execute both methods and print resulting hashes after changes.

#Create client data hash
client_data = {
  name: nil,
  age: nil,
  number_of_children: nil,
  decor_theme: nil,
  favorite_color: nil,
}

def is_int(input)
  input =~ /\d/ && input !~ /[a-zA-Z]/ ? true : false
end

# def is_string(input)
#   input =~ /[a-zA-Z0-9]/ ? true : false
# end

def store_client_data(client_data)
  client_data.each do |key, value|
    input_valid = false
    if key == :age || key == :number_of_children
      while input_valid == false
        puts "Enter #{key}".gsub(/_/, ' ')
        input = gets.chomp
        input_valid = is_int(input)
      end
        client_data[key] = input.to_i
    else
        puts "Enter #{key}".gsub(/_/, ' ')
        client_data[key] = gets.chomp
    end
  end
end



# #Interface
# def store_client_data(client_data)

#   name = nil
#   while is_string(name) == false
#     puts "Enter client name as a string"
#     name = gets.chomp
#   end
#     client_data[:name] = name

#   age = nil
#   while is_int(age) == false
#     puts "Enter client age as an integer"
#     age = gets.chomp
#   end
#     client_data[:age] = age.to_i

#   number_of_children = nil
#   while is_int(number_of_children) == false
#     puts "Enter number of children as an integer"
#     number_of_children = gets.chomp
#   end
#     client_data[:number_of_children] = number_of_children.to_i

#   decor_theme = nil
#   while is_string(decor_theme) == false
#     puts "Enter client decor theme as string"
#     decor_theme = gets.chomp
#   end
#     client_data[:decor_theme] = decor_theme

#   favorite_color = nil
#   while is_string(favorite_color) == false
#     puts "Enter client favorite color as string"
#     favorite_color = gets.chomp
#   end
#     client_data[:favorite_color] = favorite_color
# end

#ask if user wants to update key
def update_key(client_data)
  puts "If you would like to update a field entered above, please enter the name of the field. Otherwise, enter 'none' to exit."
  key_input = gets.chomp
  if key_input != "none"
    puts "Please enter a new value for the #{key_input} field.".gsub(/_/, ' ')
    client_data[key_input.to_sym] = gets.chomp
  end

end

store_client_data(client_data)
p client_data

update_key(client_data)
p client_data


