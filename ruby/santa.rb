class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

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
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.push(reindeer_name)
  end

  def set_gender(gender)
    @gender = gender
  end

  def reindeer_ranking
    @reindeer_ranking
  end



end

Jamie = Santa.new("female", "asian")

Jamie.speak
Jamie.eat_milk_and_cookies("snickerdoodle")
p Jamie.reindeer_ranking
Jamie.get_mad_at("Prancer")
p Jamie.reindeer_ranking

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "unfamiliar with gender concept"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Extraterrestrial"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# santas.each do |santa|
#   p santa
# end