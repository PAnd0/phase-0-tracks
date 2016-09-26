#Pseudocode


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

#Driver Code
p alias_manager('Felicia Torres')
