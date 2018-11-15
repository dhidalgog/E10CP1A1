require "faker"

class Vehicle
  attr_accessor :model, :year
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
    puts "El motor está encendido."
  end
end

class Car < Vehicle
  @@count = 0
  def initialize(model, year)
    super
    @@count += 1
  end

  def self.show_count
    puts @@count
  end

  def self.car_factory
    10.times do
      car = Car.new(Faker::Vehicle.model, Faker::Vehicle.year)
      puts "model: #{car.model} year: #{car.year}"
    end
  end
end

Car.car_factory
Car.car_factory
Car.car_factory
Car.car_factory

Car.show_count

