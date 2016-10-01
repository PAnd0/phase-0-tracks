class Santa

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    # @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.delete
    # @reindeer_ranking.push(reindeer_name)
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  def gender
    @gender
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

end

Jamie = Santa.new("female", "asian")

Jamie.get_mad_at("Dasher")
puts "The current reindeer rankings are: #{reindeer_ranking}"

Jamie.speak
Jamie.eat_milk_and_cookies("snickerdoodle")

Jamie.celebrate_birthday
puts "Jamie is #{Jamie.age} years old."

Jamie.gender=("male")
puts "Jamie is a #{Jamie.gender}."

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
