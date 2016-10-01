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

end

spot = Puppy.new

spot.fetch("ball")

spot.speak(5)

spot.roll_over

