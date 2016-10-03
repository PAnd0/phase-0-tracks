class Santa

  attr_accessor :gender, :ethnicity, :reindeer_ranking, :age

  #Initialize Method
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  #Getter Methods
  # def gender
  #   @gender
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # def reindeer_ranking
  #   @reindeer_ranking
  # end

  # def age
  #   @age
  # end

  #Setter Methods
  def gender=(gender)
    @gender = gender
  end

  #Other Methods
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

  def print_status
    puts "\nGender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Reindeer Ranking: #{@reindeer_ranking}"
    puts "Age: #{@age}"
  end

end

#Driver Code
Jamie = Santa.new("female", "asian")

Jamie.speak
Jamie.eat_milk_and_cookies("snickerdoodle")
p Jamie.reindeer_ranking
Jamie.get_mad_at("Prancer")
p Jamie.reindeer_ranking
Jamie.gender = "undecided"
p Jamie.gender


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "unfamiliar with gender concept"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Extraterrestrial"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas.each do |santa|
  santa.print_status
end