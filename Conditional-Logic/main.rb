# Basic conditional
a = true
puts "hello" if 4 != 5

# If Else/Elseif

a = 3
if a > 3
  puts "#{a} is greater than 3"
  elseif a < 3
  puts "#{a} is less than 3"
end

# Unless Statement

unless a == 3

puts "#{'a'} does not equal 3"
end

# Comparison Operators

# == not assigning value, checking for equal value. Always result in boolean.

3 == 3 #=> true
3 == 5 #=> false

# != checking for non equal value. Not assigning value. 

3 != 4 #=> true
# >
3 > 2 #=> true
3 > 4 #=> false

# <

3 < 2 #=> false
3 < 4 #=> true

# >=

3 >= 3 #=> true
2 >= 3 #=> false

# <=

3 <= 3 #=> true
2 <= 3 #=> true

# <=>

puts 4 <=> 3

# <+> compares what's on the left to the right.If the left side is greater than the right it will be positive 1 and if it's equal it will be zero and if it's less than it will be negative 1.

# Logical Operators

a = 4
# &&

# puts "#{a} is between 4 and 10" if a > 4 && a < 10

# ||

# puts "#{a} is either greater than 4 or greater than 10" if a > 4 || a < 10

# Ternary Operator

can_swim = false

response = can_swim ? "You won't drown": "You might drown"

puts response

# Case Statement

grade = 'A'

case grade
when "A"
  puts "Good Job!"
  when "B"
  puts "Great Job, try better next time though"
  when "C"
  puts "You still passed but study a bit"
  when "D"
  puts "Almost Passed, study up"
  when "F"
  puts "You failed, please study"
end