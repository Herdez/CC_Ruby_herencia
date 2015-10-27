#Relaciona las siguientes clases y crea los métodos para hacer pasar el 
#driver code.

#Super_class 'Vehicle'
class Vehicle
  attr_reader :number_of_wheels, :color, :age, :has_motor

  def age!
    @age
  end

  def number_of_wheels
    @number_of_wheels
  end

  def color
    @color
  end   

  def has_motor
    @has_motor
  end
end

#Sub_class of Super_class 'Vehicle'
class Motorized < Vehicle
  attr_reader :tank_size, :refuel, :number_of_gears 

  def tank_size
    @tank_size
  end
  
  def refuel
    @refuel
  end

  def number_of_gears
    @number_of_gears
  end
end

#Sub_class of 'Motorized'
class Motorbike < Motorized
end

#Sub_class of 'Motorized'
class Car < Motorized
end

#Sub_class of 'Vehicle'
class Bicycle < Vehicle
  #Method to initialize 'age'
  def initialize(num)
     @age = num
  end
end

#Sub_class of 'Vehicle'
class Skateboard < Vehicle
end


#Driver code
moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.class} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end