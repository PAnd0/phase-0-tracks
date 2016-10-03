#Shout Mixin Module
module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :D"
  end
end

#Classes
class Man
  include Shout
end

class Woman
  include Shout
end

class IsleyBrothers
  include Shout
end

class TearsForFears
  include Shout
end


#Driver Code
man = Man.new
p man.yell_angrily("I'm a man")
p man.yelling_happily("I'm a man")

woman = Woman.new
p woman.yell_angrily("I'm a woman")
p woman.yelling_happily("I'm a woman")

isley_brothers = IsleyBrothers.new
p isley_brothers.yell_angrily("You know you make me wanna")
p isley_brothers.yelling_happily("Kick my heels up and")

tears_for_fears = TearsForFears.new
p tears_for_fears.yell_angrily("Shout Shout")
p tears_for_fears.yelling_happily("Let it all out")


# #Shout Module
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :D"
#   end
# end

# #Driver Code
# p Shout.yell_angrily("I'm angry")
# p Shout.yelling_happily("I'm happy")