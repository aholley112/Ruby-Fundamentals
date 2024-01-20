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
  person3: { first_name: 'Brooklynn', last_name: 'Porter', age: 22 }
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

# Exercise 5
# Create a method called sum that takes an array of numbers as an argument and returns the sum of the numbers. Use the sum method to find the sum of the numbers in the following array:
# numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def sum(numbers)
  numbers.inject(0) { |total, number| total + number }
end
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

total_sum = sum(numbers)
puts "The sum of the numbers is: #{total_sum}"

# Exercise 6
# Create a method called average that takes an array of numbers as an argument and returns the average of the numbers. Use the average method to find the average of the numbers in the following array:
# numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def average(numbers)
  sum = numbers.inject(0) { |total, number| total + number }
  sum.to_f / numbers.length 
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

average_value = average(numbers)
puts "The average of the numbers is: #{average_value}"

Exercise 7
# Create a method called length_finder that takes an array of strings as an argument and returns an array of the lengths of each string in the original array. Use the length_finder method to find the lengths of the strings in the following array:
# words = ["hello", "what", "is", "up", "dude"]

def length_finder(strings)
  strings.map { |string| string.length }
end

words = ["hello", "what", "is", "up", "dude"]

lengths = length_finder(words)
puts "The lengths of the strings are: #{lengths}"

# Exercise 8
# Create a method called reverse that takes a string as an argument and returns the reverse of that string. Use the reverse method to reverse the string "hello world".

def reverse(string)
  string.reverse
end

string_to_reverse = "hello world"
reversed_string = reverse(string_to_reverse)
puts "The reversed string is: #{reversed_string}"

# Exercise 9
# Create a method called find_longest_word that takes an array of words and returns the length of the longest one. Use the find_longest_word method to find the length of the longest word in the following array:
# words = ["hello", "what", "is", "up", "dude"]

  def find_longest_word(words)
    longest_word = words.max_by { |word| word.length }
    longest_word.length
  end

  words = ["hello", "what", "is", "up", "dude"]

  longest_word_length = find_longest_word(words)
  puts "The length of the longest word is: #{longest_word_length}"

# Exercise 10
# Create a method called high that takes a hash of symbols and numbers as an argument and finds the key with the largest value. Use the high method to find the key with the largest value in the following hash:
  
  def high(scores_hash)
    highest_pair = scores_hash.max_by { |key, value| value }
    highest_pair[0]
end
  
  high_scores = {
    bronze: 10,
    silver: 20,
    gold: 30
  }

  highest_key = high(high_scores)
  puts "The key with the highest value is: #{highest_key}"

# Exercise 11
# A hash is nested within another hash. Write code that will return the value 30.

  # hash = {
  #   :a => {
  #     :b => 30
  #   },
  #   :c => {
  #     :d => 40
  #   },
  #   :e => {
  #     :f => {
  #       :g => 50
  #     }
  #   }
  # }

  value = hash[:a][:b]

  puts "The value is: #{value}"

# Exercise 12
# Create a method called double that takes an array of numbers as an argument and returns a new array with each number doubled. Use the double method to double the numbers in the following array:

  numbers = [1, 2, 3, 4, 5]

  def double(numbers)
    numbers.map { |number| number * 2 }
  end

  numbers = [1, 2, 3, 4, 5]
  doubled_numbers = double(numbers)
  puts "The doubled numbers are: #{doubled_numbers}"

# Exercise 13
# Create a method called multiply that takes two numbers as arguments and returns the product of the two numbers. Use the multiply method to find the product of the following numbers:

  a = 5

  b = 6

  def multiply(num1, num2)
    num1 * num2
  end
  
  a = 5
  b = 6

  product = multiply(a, b)
  puts "The product of #{a} and #{b} is: #{product}"

# Exercise 14

# Create a method called divisible_by_three that takes an array of numbers and returns a new array containing only those numbers that are divisible by three. Use the divisible_by_three method to find the numbers that are divisible by three in the following array:

# numbers = [9, 3, 1, 8, 6, 15, 12]

def divisible_by_three(numbers)
  numbers.select { |number| number % 3 == 0 }
end

numbers = [9, 3, 1, 8, 6, 15, 12]

divisible_numbers = divisible_by_three(numbers)
puts "Numbers divisible by three are: #{divisible_numbers}"

