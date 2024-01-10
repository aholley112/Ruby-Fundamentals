# Enumerable Methods

# Each Method

# Calling 'each' on an array will iterate through that array and will yield each # element to a code block, where a task can be performed.

attendees = ['donald', 'stacy', 'sara', 'lee', 'nolan', 'jacob']

attendees.each { |attendee| puts "Hello, " + attendee}

# Each With Index Method

# We want to seperate the attendees in two different teams. When we do each_with_index we have two references. The index gives us the reference number of each item in the array and we can use that to manipuulate the array.

attendees.each_with_index do |attendee, index| 

  puts "Team 1: " + attendee if index.odd?
  puts "Team 2: " + attendee if index.even?
end

  # This outputs

Team 2 and Team 1 names corrrectly.
  
# Map Method


# The 'map' method (also called 'collect') transforms each eleemtn from an array according to whatever block you pass to it and returns the transformed elements in a new array. It acts a lot like the RxJS map method.

puts attendees.map { |attendee| attendee.upcase }
puts attendees 

# We can change the actual array by using the 'bang' method. which will change our second puts attendees. But you don't really want to do that.

# Instead we can create a variable called updated list.

updated_list = attendees.map { |attendee| attendee.upcase }
puts updated_list

# Select Method

# The 'select' method (also called 'filter') returns a new array with all the elements that match a condition you pass.
# It passes every item in an array to a block and returns a new array with only the items for which the condition you set in the block evaluated to true.

puts attendees.select { |attendee| attendee != 'lee' }

# This puts out all the names except for 'lee'. Our original attendee array still stands.

  # Reduce Method

  # The 'reduce' method (also called 'inject') takes an array and returns a single value. It takes two arguments, a starting value'

  # It is possibly the most difficult to grasp enumerable for new coders. The idea is simple enough, though: it reduces an array or hash down to a single object. You should use 'reduce' when you want to get an output of a single value.

  some_numbers = [1, 2, 3, 4, 5]

puts some_numbers.reduce { |sum, number| sum + number } This gives us the output of 15. The sum is known as the accumulator. 

  # Returning Values demonstrated 

  