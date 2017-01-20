class System

attr_reader :bodies

  def initialize
    @bodies = []
  end

  def add(body)
    @bodies << body
  end

  def total_mass
    total_mass = 0
    @bodies.each do |body|
      total_mass += body.mass
  end
    total_mass
  end

end

class Body

  attr_reader :name, :mass

  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end

class Planet < Body

  attr_writer :day, :year

  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  
  end
end

class Star < Body

  attr_writer :type

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end
  end


class Moon < Body

  attr_writer :month, :Planet

  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
  end
end


planet = Planet.new('earth', 500, 24, 365)
star = Star.new('north_star', 200, 'g-type')
moon = Moon.new('moon', 350, 29, 'earth')

solarsystem = System.new
solarsystem.add(planet)
solarsystem.add(star)
solarsystem.add(moon)
