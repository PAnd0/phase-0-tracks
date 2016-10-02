class Puppy
  def initialize
     puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
     puts "I brought back the #{toy}!"
     toy
  end

  def speak(count)
     puts "Woof!\n" * count
  end

  def roll_over
     puts "*rolls over*"
  end

  def dog_years(human_yrs)
     human_yrs * 7
  end

  def play_dead
     puts "I'm dead."
  end
 end

class Ball
  def initialize

  end

  def bounce(count)
    puts "Boing!\n"*count
  end

  def roll
    puts "Rolling ..."
  end
end

spot = Puppy.new
spot.fetch("ball")
spot.speak(5)
spot.roll_over
p spot.dog_years(12)
spot.play_dead

balls = []

50.times do
  balls << Ball.new()
end

balls.each do |ball|
  ball.bounce(3)
  ball.roll
end