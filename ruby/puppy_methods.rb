class Puppy

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

spot = Puppy.new

spot.fetch("ball")

spot.speak(5)

spot.roll_over

p spot.dog_years(12)

spot.play_dead


