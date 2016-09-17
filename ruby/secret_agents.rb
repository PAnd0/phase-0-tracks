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

  puts input

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

puts input

input
end


encrypt ("abc")
encrypt ("zed")
decrypt ("bcd")
decrypt ("afe")

decrypt(encrypt("swordfish"))