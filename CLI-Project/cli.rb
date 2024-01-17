require_relative 'user'  

class CLI
  def initialize
@api = Api.new  
  end

  def start
    user_actions  

    if @current_user
      puts "Welcome to the Goodreads CLI!"
      puts "Do you prefer science fiction, mystery, or non-fiction?"
      print "Enter your choice: "
      genre     = gets.chomp.strip.downcase  

      until ["science fiction", "mystery", "non-fiction"].include?(genre)
        puts "Invalid choice. Please choose from science fiction, mystery, or non-fiction."
        print "Enter your choice: "
        genre = gets.chomp.strip.downcase  
      end

      display_results(@api.fetch_books(genre))  
    end
  end


  
