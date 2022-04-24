class Bulbasaur
    attr_accessor :hp, :attack, :defence, :speed, :special # these symbols are the attributes for the "bulbasaur" objects we're creating below
  
    def attributes # this lets you call all attributes at once using object.attributes
      instance_variables.map do |attribute|
        key = attribute.to_s.gsub('@', '')
        [key, instance_variable_get(attribute)]
      end.to_a
    end
  
    def initialize(hp, attack, defence, speed, special) # these parameters are just place names for the values we'll be entering in each new bulbasaur
      @hp = hp # these are instance variables that are usable by all methods in this class; they will be linked to the attributes  listed above. i.e @attack = :attack
      @attack = attack
      @defence = defence
      @speed = speed
      @special = special
    end
  end
  
  seedyboi = Bulbasaur.new(rand(19..20), rand(9..10), rand(9..10), rand(11..12), rand(9..10))
  
  puts seedyboi.attributes
 
  # attr_accessor :name,'bulbasaur', :type,'Grass' - need to get this to work
  
  testtest