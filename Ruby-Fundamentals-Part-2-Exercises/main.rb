# Number 1 - Create a Ruby program that performs the following tasks using classes and objects:
# Define a class called 'Car' that takes a make and model as arguments.
# Define a method called 'print_color' that prints the color of the car.
# Create an instance of the 'Car' class called 'car'.
# Create a test for the 'Car' class that tests the 'print_color' method.

class Car
  attr_accessor :make, :model, :color
  def initialize(make, model, color)
    @make = make
    @model = model
    @color = color
end

  def print_color
    puts "The color of the car is #{@color}"
  end

car = Car.new("Toyota", "Camry", "Red")

  # Test

  require 'rspec'

  require_relative '../car'

  describe Car do
    describe '#print_color' do
      it 'prints the color of the car' do
        car = Car.new("red")

        expect(car.print_color).to eq("red")
      end
    end
  end

  # Number 2: Create a Ruby program that performs the following tasks using inheritance:
  # Define a class called 'Fruit' that takes a name as an argument.
  # Define a method called 'print_name' that prints the name of the fruit.
  # Define a class called 'Apple' that inherits from the 'Fruit' class.
  # Create an instance of the 'Apple' class called 'apple'.
  # Create a test for the 'Apple' class that tests the 'print_name' method. 

  class Fruit
    def initialize(name)
      @name = name
    end

    def print_name
      puts "The name of the fruit is #{@name}."
    end
  end

  class Apple < Fruit
  end

  # Test

  require 'rspec'

  require_relative '../apple'

  describe Apple do
    describe '#print_name' do
      it 'prints the name of the fruit' do
        apple = Apple.new("apple")

        expect(apple.print_name).to eq("apple")
      end
    end
  end

  # Number 3: Define a Car class: The class should initialize with a make, model, and color. Include methods to get and set each of these attributes.
  # Add a method info that returns a string with all the car's details.
  # Create a Garage class:
  # This class will manage a collection of Car objects.
  # Implement methods to add a car, remove a car by make and model, and list all cars.
  # Add a method to find all cars of a specific color.
  # add a method to clear all cars from the garage.

 # Car
  
  class Car

    attr_accessor :make, :model, :color
    
    def initialize (make, model, color)
      @make = make
      @model = model
      @color = color

    end

    def info
      "Make: #{@make}, Model: #{@model}, Color: #{@color}"
    end
  end

  # Car Test

  require 'rspec'
  require_relative '../car'

  describe Car do
    car = Car.new("Toyota", "Corolla", "Blue")

    it 'should return correct make' do
      expect(car.make).to eq("Toyota")
    end

    it 'should return correct model' do
      expect(car.model).to eq("Corolla")
    end

    it 'should return correct color' do
      expect(car.color).to eq("Blue")
    end

    it 'should return correct info' do
      expect(car.info).to eq("Make: Toyota, Model: Corolla, Color: Blue")
    end
  end

  # Garage

  class Garage
    def initiailize
      @cars = []
    end

    def add_car(car)
      @cars << car
    end

    def remove_car(make, model)
      @cars.delete_if { |car| car.make == make && car.model == model }
    end

    def list_cars 
      @cars.map(&info)
    end

    def find_cars_by_color(color)
      @cars.select { |car| car.color == color } .map(&:info)
    end
  end


  # Garage Test
  
  require 'rspec'
  require_relative '../car'
  require_relative '../garage'

  describe Garage do
    garage = Garage.new
    car1 = Car.new("Toyota", "Corolla", "Blue")
    car2 = Car.new("Honda", "Civic", "Red")

    before(:each) do
      garage.add_car(car1)
      garage.add_car(car2)
    end

    it 'should list all cars' do
      expect(garage.list_cars).to eq([car1.info, car2.info])
    end

    it 'should find cars by color' do
      expect(garage.find_cars_by_color("Red")).to eq([car2.info])
    end

    it 'should remove a car' do
      garage.remove_car("Toyota", "Corolla")
      expect(garage.list_cars).not_to include(car1.info)
    end
  end