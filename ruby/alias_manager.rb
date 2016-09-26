#Pseudocode
#Split name at spaces, reverse items in array, and rejoin
#Split name into characters
#map each character to next vowel or consonant using get_next method
# - if character is not a letter, return the character without changing it
# - check whether vowel or consonant and map to next vowel or consonant accordingly


#Methods
def is_vowel(letter)
  "aeiou".include?(letter.downcase)
end

def is_letter(letter)
  letter =~ /[a-zA-Z]/
end

def get_next(letter)
  letter == 'z' ? scan_letter = 'a' : scan_letter = letter.next

  if !is_letter(letter)
    scan_letter = letter
  elsif is_vowel(letter)
    while !is_vowel(scan_letter)
      scan_letter.next!
    end
  elsif !is_vowel(letter)
    while is_vowel(scan_letter)
      scan_letter.next!
    end
  end
  scan_letter
end

def alias_manager(name)
  agent_alias = name.split(' ').reverse.join(' ').split('')
  agent_alias.map! { |letter| get_next(letter)}
  agent_alias.join('')
end

#Interface
input = nil

aliases = {}

loop do
  puts "Please enter name"
  input = gets.chomp
  break if input == "quit"
  # puts alias_manager(input)
  aliases.merge!(input.to_sym => alias_manager(input))
end

aliases.each { |key, value| puts "#{key} is also known as #{value}." }

# p aliases

# #Driver Code
# p alias_manager('Felicia Torres')
