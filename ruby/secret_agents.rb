# Create an encrypt method
#     define alphabet variable
#     create counter
#     For each letter in input string
#         -find index of following letter in alphabet (add 1)
#         -replace current letter with following letter in alphabet using index

# get input string

def encrypt(input)
  alphabet = "abcdefghijklmnopqrstuvwxyza"

  index = 0

  while index < input.length
    input[index] = input[index].next
    counter += 1
  end

puts input
end

encrypt ("abc")