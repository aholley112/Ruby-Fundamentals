# Arrays

# Creating Arrays
num_array = [1, 2, 3]
# str_array = ['a', 'b', 'c]

Array.new() # []
Array.new(3) # [3]
Array.new (3, 9) # [9, 9, 9]
Array.new (5, true) # [true, true, true, true, true]

# Accessing Elements

str_array = ['a', 'b', 'c]
str_array[0] 
str_array[-2]
str_array.first(2)
str_array.last(2)

# Adding and Subtracting Elements

num_array = [1, 2, 3]
num_array.shift
num_array.unshift(1)

# num_array.push(4, 5) # [1, 2, 3, 4, 5]
# num_array << 5 # [1, 2, 3, 5]
# num_array.pop # 5
# num_array # [1, 2, 3]

# Adding and Subtracting Arrays

a = [1, 2, 3]
b = [4, 5, 6]

a + b # [1, 2, 3, 4, 5, 6]
a.concat(b)
[1, 1, 1, 1, 1, 2, 3, 4] - [1, 4] # [2, 3]

# Basic Array methods

[[]].empty? # false
[].empty? # true
[1, 2] # false

[1, 2, 3].length # 3
[1, 2, 3].reverse # [3, 2, 1]

[1 , 2, 3].include?(3) # true)
{1, 2, 3}.include?('3') # false

"Hi how are you".split("") # [
'Hi", 'how', 'are', 'you']
[1, 2, 3].join(", ") # "1, 2, 3"