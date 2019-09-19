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

end
