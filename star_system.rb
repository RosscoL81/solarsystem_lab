class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names()
    @planets.map {|planet| planet.name}
  end

  def get_planet_by_name(planet)
    @planets.find {|planet1| planet1.name == planet}
  end

  def get_largest_planet
    @planets.max { |planet1, planet2| planet1.diameter <=> planet2.diameter}
  end

  def get_smallest_planet
    @planets.min { |planet1, planet2| planet1.diameter <=> planet2.diameter}
  end

  def get_planets_with_no_moons
    @planets.find_all { |planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(number)
    moony_planets = []
    @planets.find_all do |planet|
      if planet.number_of_moons > number
        moony_planets.push(planet.name)
      end
    end
    return moony_planets
  end

  def get_number_of_planets_closer_than(distance)
    @planets.find_all { |planet| planet.distance_from_sun < distance}.length
  end

  def get_total_number_of_moons
    @planets.reduce(0) { |total, planet| total + planet.number_of_moons}
  end 


end
