class Pokemon
    attr_accessor :hp

    def initialize(hp) 
      @hp = hp 
    end

  end

  pikachu = Pokemon.new(50)

  puts pikachu.hp