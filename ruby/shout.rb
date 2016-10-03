#Shout Module
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :D"
  end
end

#Driver Code
p Shout.yell_angrily("I'm angry")
p Shout.yelling_happily("I'm happy")