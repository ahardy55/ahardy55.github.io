# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: ].

# EXPLANATION OF require_relative
# require_relative is used to access a file within the same directory. 
#
require_relative 'state_data'
 
class VirusPredictor 
 
  def initialize(state_of_origin, population_density, population, region, regional_spread) #naming all of the parameters that the method is taking
    @state = state_of_origin 
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
  
 
  def virus_effects #creating method that calculates effects of virus
    predicted_deaths
    speed_of_spread
  end
 
  private #private methods are only accessible internally. you cannot explicitly call private methods or you will throw an error.
      #if a predicted_deaths method is placed above the virus_effects method, you can call it because it is public facing
 
  def predicted_deaths #predicted_deaths method and parameters its taking
    if @population_density >= 200 
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end
 
    print "#{@state} will lose #{number_of_deaths} people in this outbreak" 
 
  end
 
  def speed_of_spread #defining a method speed_of_spread that takes in 2 parameters
    speed = 0.0 
 
    if @population_density >= 200 
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end
 
    puts " and will spread across the state in #{speed} months.\n\n" 
 
  end
 
end
 
#=======================================================================
 
# DRIVER CODE
 # initialize VirusPredictor for each state

 state = STATE_DATA

state.each_key do |state|
  VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population], STATE_DATA[state][:region], STATE_DATA[state][:regional_spread]).virus_effects
end
 
 
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects
 
jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects
 
california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects
 
alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects


