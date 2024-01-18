# Exercise 1. Use an array to store the following information about 3 people: their first name, last name, and age. Then, loop through your array and print out the following message for each person:

# Hi first_name last_name! You are age years old today.

people = [
  {first_name: 'Amanda', last_name: 'Feely', age: 35},
  {first_name: 'Steve', last_name: 'Holley', age: 64},
  {first_name: 'Dana', last_name: 'Manes', age: 73}
]

people.each do |person|
  puts "Hi #{person[:first_name]} #{person[:last_name]}! You are #{person[:age]} years old today"
end

# Exercise 2

# Use a hash to store the following information about 3 people: their first name, last name, and age. Then, loop through your hash and print out the following message for each person:

# Hi first_name last_name! You are age years old today.

people = {
  person1: { first_name: 'Axtin', last_name: 'Burdock', age: 30 },
  person2: { first_name: 'John', last_name: 'Mack', age: 45 },
  person3: { first_name: 'Brooklynn', last_name: '{Porter}', age: 22 }
}

people.each do |key, person|
  puts "Hi #{person[:first_name]} #{person[:last_name]}! You are #{person[:age]} years old today"
end

# Exercise 3
# For every character in the sentence "Hello world", print out each letter on a separate line.

sentence = "Hello world"
sentence.each_char do |char
  puts char
end

# Exercise 4

# For every number between 1 and 100, print out "Fizz" if the number is divisible by 3, "Buzz" if the number is divisible by 5, and "FizzBuzz" if the number is divisible by both 3 and 5. Otherwise, print out the number.

(1..100).each do |number|
  if number % 3 == 0 && number % 5 == 0
    puts "FizzBuzz"
  elsif number % 3 == 0
    puts "Fizz"
  elsif number % 5 == 0
    puts "Buzz"
  else
    puts number
  end
end
