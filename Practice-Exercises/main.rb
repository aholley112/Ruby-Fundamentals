#1. Variables
#Create a Ruby script that declares a local variable called my_name and assigns it your full name as a string.

my_name = "Amanda Feely"
puts my_name

#2. Arithmetic Operators
#Create a Ruby script that calculates and prints the area of a rectangle with a width of 10 and a height of 5

width = 10
height = 5

area = width * height

puts area
puts "The area of the rectangle is #{area}."

#3. Conditional Operators & Control Flow
#Create a Ruby script that checks if a number is positive, negative, or zero. If it is a positive number, print "positive". If it is a negative number, print "negative". Otherwise, print "zero".

number = 3 

if number > 0
  puts "positive"
elsif number < 0
  puts "negative"
else
  puts "zero"
end


#4. Basic Methods
#Create a Ruby script that defines a method called add that takes two numbers as arguments and returns their sum.

def add(a, b)
  a + b
end

puts add(5, 3)  

# OR

def add(number1, number2)
  number1 + number2
end

puts "Enter first number"
first_number = gets.chomp.to_i 

puts "Enter second number"
second_number = gets.chomp.to_i

sum= add(first_number, second_number)

puts "The sum of #{first_number} and #{second_number} is #{sum}."

#5. Testing with RSpec
#Create a test for a method that takes two numbers as arguments and returns their multiplication. Run the tests and make sure they pass.

#require_relative '../math_operations'
#describe 'math_operations' do
#  describe '#subtract' do
#    it 'correctly subtracts two numbers' do
 #     expect(multiply(4, 2)).to eq(2)
 #   end
#  end
#end

#6. Arrays
#Create a Ruby script that iterates over the array [1, 2, 3, 4, 5] and prints each element.

array = [1, 2, 3, 4, 5]

array.each do |number|
  puts number
end

#7. Hashes
#Create a Ruby script that iterates over the hash { "name" => "Alice", "age" => 30 } and prints each key-value pair.

my_hash = {
  "name" => "Alice",
  "age" => 30
}

my_hash.each do |key, value|
  puts "#{key}: #{value}"
end

#8. Loops & Control Flow
#Create a Ruby script that prints the numbers from 1 to 20. For multiples of three, print "Fizz" instead of the number. For multiples of five, print "Buzz". For numbers that are multiples of both three and five, print "FizzBuzz".

(1..20).each do |number|
  if number % 15 == 0

    puts "FizzBuzz"
  elsif number % 3 == 0
    puts "Fizz"
  elsif number % 5 == 0
    puts "Buzz"
  else
    puts number
  end
end

#9. Super Fizz Buzz
#Create a Ruby script that prints the numbers from 1 to 100. For multiples of three, print "Fizz" instead of the number. For multiples of five, print "Buzz". For numbers that are multiples of both three and five, print "FizzBuzz". For numbers that are multiples of seven, print "Super". For numbers that are multiples of both three and seven, print "FizzSuper". For numbers that are multiples of both five and seven, print "BuzzSuper". For numbers that are multiples of three, five, and seven, print "FizzBuzzSuper".

(1..100).each do |i|
  if i % 3 == 0 && i % 5 == 0 && i % 7 == 0
    puts "FizzBuzzSuper"
  elsif i % 3 == 0 && i % 7 == 0
    puts "FizzSuper"
  elsif i % 5 == 0 && i % 7 == 0
    puts "BuzzSuper"
  elsif i % 3 == 0 && i % 5 == 0
    puts "FizzBuzz"
  elsif i % 3 == 0
    puts "Fizz"
  elsif i % 5 == 0
    puts "Buzz"
  elsif i % 7 == 0
    puts "Super"
  else
    puts i
  end
end