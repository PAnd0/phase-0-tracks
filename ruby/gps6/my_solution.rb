# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative allows code to access another ruby document using a relative file path rather than an absolute file path as with require.
#
require_relative 'state_data'

class VirusPredictor
  # initialize method to initialize instance of VirusPredictor class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # virus_effects method to call predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #predicted_deaths method predicts number of deaths based on population density, population, and state arguments
  def predicted_deaths

    # predicted deaths is solely based on population density
    density_factor = (@population_density / 50).floor * 0.1
    # limit range of density factor to between 0.05 and 0.4
    density_factor = [[density_factor, 0.05].max, 0.4].min

    # if density_factor > 0.4
    #   density_factor = 0.4
    # elsif density_factor == 0
    #   density_factor = 0.05
    # end

    number_of_deaths = (@population * density_factor).floor

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #speed_of_spread method predicts the speed that virus will spread based on population_density and state name arguments
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.


    speed_factor = [(@population_density/50).floor, 4].min
    speed = (5 - speed_factor) / 2.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE

# loop through States in STATE_DATA and print data


STATE_DATA.each do |state_name, population_data|
  state = VirusPredictor.new(state_name, population_data[:population_density], population_data[:population])
  state.virus_effects
end



 # initialize VirusPredictor for each state
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

