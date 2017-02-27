class SolarSystem
    attr_accessor :name, :planets
    def initialize name='Andromeda'
      @name = name
      @planets = [Planet.new]
    end

    def add_planet name, desc, pop
      self.planets << Planet.new(name, desc, pop)
    end

    def supernova
      @planets = []
    end
end

class Planet
    attr_accessor :name, :description, :population
    def initialize name='charlie', description='first planet', population=1
        @name = name
        @description = description
        @population = population
    end
end
