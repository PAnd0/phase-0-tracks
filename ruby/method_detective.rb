# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
puts "iNvEsTiGaTiOn".swapcase
puts "iNvEsTiGaTiOn".replace("InVeStIgAtIoN")

# "zom".<???>
# => “zoom”
puts "zom".insert(1,'o')
puts "zom".insert(2,'o')
puts "zom".replace("zoom")
puts "zom".gsub(/[o]/,'oo')
puts "zom".gsub(/(?<foo>[o])/,'\k<foo>o')

# "enhance".<???>
# => "    enhance    "
puts "enhance".center(15)
puts "enhance".replace("    enhance    ")

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"
puts "Stop! You’re under arrest!".upcase
puts "Stop! You’re under arrest!".replace("STOP! YOU’RE UNDER ARREST!")

# "the usual".<???>
#=> "the usual suspects"
puts "the usual".concat(" suspects")
puts "the usual" << " suspects"
puts "the usual" + " suspects"
puts "the usual".replace("the usual suspects")

# " suspects".<???>
# => "the usual suspects"
puts " suspects".prepend("the usual")
puts "the usual" + " suspects"
puts "the usual" << " suspects"
puts "suspects".replace("the usual suspects")

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"
puts "The case of the disappearing last letter".chop
puts "The case of the disappearing last letter".chomp("r")
puts "The case of the disappearing last letter".byteslice(0,39)
puts "The case of the disappearing last letter".slice(0,39)
puts "The case of the disappearing last letter".replace("The case of the disappearing last lette")


# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
puts "The mystery of the missing first letter".byteslice(1,38)
puts "The mystery of the missing first letter".slice(1,38)
puts "The mystery of the missing first letter".replace("he mystery of the missing first letter"
)

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
puts "Elementary,    my   dear        Watson!".squeeze(" ")
puts "Elementary,    my   dear        Watson!".gsub(/\s+/, ' ')
puts "Elementary,    my   dear        Watson!".replace("Elementary, my dear Watson!")

# "z".<???>
# => 122
# (What is the significance of the number 122 in relation to the character z?)
# 122 is 'z' in ASCII-8BIT encoding
puts "z".bytes
puts "z".replace("122")



# "How many times does the letter 'a' appear in this string?".<???>
# => 4
puts "How many times does the letter 'a' appear in this string?".count('a')
puts "How many times does the letter 'a' appear in this string?".replace('4')