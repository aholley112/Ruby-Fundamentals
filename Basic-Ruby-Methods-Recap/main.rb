# Methods

# Creating Methods

def Name
  "Nolan"
end

# puts name

# Naming Conventions

def area_of_rectangle
end

# # Valid
# method_name
# _name_of_method
# method_21
# method_name!
# begin_count

# # Invalid

# 1_method_name
# method?_name
# begin
  

# Parameters and Arguments

  def area_of_rectangle(width, height)
    width * height
  end

  puts area_of_rectangle(2, 3)

 # OR

def area_of_rectangle(wideth = 2, height = 4)
  width * height

  puts area_of_rectangle
  
# What Methods Return

  def preferred_pet(pet)
    if pet == 'dog'
      'You should get a dog'
    elsif pet == 'cat'
      'You should get a cat'
    else
      'Never heard of it!'
    end
  end

  puts preferred-pet ('chinchilla')

  # Methods

#   Predicate Method
# puts 4.odd? 
#   All predicate methods have ?
#   know that this is a predicate method. With a ? it returns true or false based off of the method name. 

  puts 15.between?(10, 20)

 # Bang Method
  # Bang Operator '!'

  string = 'HELLO, HOW ARE YOU?'

  puts string.downcase
  puts string 
  puts string.downcase!

  This method has the ! and will put the action on the variable.