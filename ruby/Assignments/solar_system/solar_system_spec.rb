require_relative 'solar_system'

RSpec.describe Planet do
  # Planet should have a name, description and population
  it "should have a name, description and population" do
    new_planet = Planet.new('Mars', 'Red planet', 0)

    expect(new_planet.name).to eq('Mars')
    expect(new_planet.description).to eq('Red planet')
    expect(new_planet.population).to eq(0)
  end
end

RSpec.describe SolarSystem do
  it "should have a name and if not, default to Andromeda" do
    new_ss = SolarSystem.new
    another_ss = SolarSystem.new('Amaneda')
    expect(new_ss.name).to eq('Andromeda')
    expect(another_ss.name).to eq('Amaneda')
  end

  it "should have a list of all the planets in the solar system" do
    new_ss = SolarSystem.new

    planets = new_ss.planets

    expect(planets.class).to eq(Array)
    expect(planets.count).to be > 0
  end

  it "should have only planet objects in its planets array" do
    new_ss = SolarSystem.new
    new_ss.planets.each do |planet|
      expect(planet.class).to eq(Planet)
    end
  end

  it "should have a count of how many planets there are in the solar system" do
    new_ss = SolarSystem.new
    expect(new_ss.planets.count).to eq(1)

    new_ss.add_planet('earth', 'temperate', 100)
    expect(new_ss.planets.count).to eq(2)
  end

  it ' Solar system should have a method called Super Nova that destroys all planets in it' do
    new_ss = SolarSystem.new
    expect(new_ss.planets.count).to eq(1)
    new_ss.supernova
    expect(new_ss.planets.count).to eq(0)
  end
end
