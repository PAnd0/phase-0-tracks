# Create an encrypt method
#     define alphabet variable
#     create counter
#     For each letter in input string
#         -find index of following letter in alphabet (add 1)
#         -replace current letter with following letter in alphabet using index
# get input string

def encrypt(input)

  index = 0

  while index < input.length
    if input[index] == "z"
      input[index] = "a"
    else
      input[index] = input[index].next
    end
    index  += 1
  end

  # puts input

  input
end

def decrypt(input)

  alphabet = "zabcdefghijklmnopqrstuvwxyz"
  alphabet.reverse!
  index = 0

  while index < input.length
    current_letter = input[index]
    input[index] = alphabet[alphabet.index(current_letter) + 1]

    index  += 1
  end

# puts input

input
end


# encrypt ("abc")
# encrypt ("zed")
# decrypt ("bcd")
# decrypt ("afe")

# decrypt(encrypt("swordfish"))

#The nested function call works because we defined a return statement rather than using an implicit return value which would return nil from the inside method.


#Ugrade Pseudocode:
# => Ask user which method they would like
# IF they say encrypt
#   Ask for password
#     Run ENCRYPT method
# ELSE
#   Ask for password
#     Run DECRYPT method
# PRINT result

puts "Would you like to encrypt or decrypt a password?"
choice = gets.chomp

if choice == "encrypt"
  puts "Enter password"
  password = gets.chomp
  encrypt(password)
  puts password
else
  puts "Enter password"
  password = gets.chomp
  decrypt(password)
  puts password
end