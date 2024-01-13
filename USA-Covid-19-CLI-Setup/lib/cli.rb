class CLI
  # run

  def run 
    greeting
    while menu != 'exit'
  end
  end_program
  end

  # greeting

  def greeting
    puts "Welcome to the USA Covid 19 Tracker"
  end

  # end program

  def end_program
    puts "Thank you for using the USA Covid 19 Tracker"
  end

  # menu
  def menu
    list_options
    input = gets.chomp.downcase
    choose_option(input)
    input 
  end

  # list of options

  def list_options
    puts "Please select an option:"
    puts "1. List all states "
    puts "2. List top ten states with the most confirmed covid cases"
    puts "3. Exit the program by entering 'exit'"
  end

  def choose_option(option)
    case option
      when "1"
      puts "Listing all states.."
      
      when "2"
      puts "Listing top ten states with the most confirmed cases"
    end
  end
end

