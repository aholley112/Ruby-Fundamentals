## FizzBuzz !
## Create a loop that counts to 100 starting at 1. Once that is complete, create conditions that will display the word "Fizz" in place of all numbers divisible by 3. Then create another condition that will display the word "Buzz" in place of all numbers divisible by 5. On numbers divisible by both display the word "FizzBuzz".

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