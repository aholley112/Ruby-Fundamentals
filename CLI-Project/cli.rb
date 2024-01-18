require_relative 'user'  

class CLI
  def initialize
    @api = Api.new  
  end

  def start
    user_actions
  end

  def user_actions
  if @current_user
    puts "1. Choose Genre\n2. Change Password\n3. Logout\n4. Exit"
    choice = gets.chomp.to_i

    case choice
    when 1
      choose_genre
    when 2
      change_password
    when 3
      logout
    when 4
      exit
    else
      puts "Invalid choice."
      user_actions
    end
  else

      puts "1. Sign Up\n2. Login\n3. Exit"
      choice = gets.chomp.to_i

      case choice
      when 1
        sign_up
      when 2
        login
      when 3
        exit
      else
        puts "Invalid choice."
        user_actions
      end
    end
  end

  def choose_genre
    puts "Welcome to the Goodreads CLI!"
    puts "Do you prefer science fiction, mystery, or non-fiction?"
    print "Enter your choice: "
    genre = gets.chomp.strip.downcase  

    until ["science fiction", "mystery", "non-fiction"].include?(genre)
      puts "Invalid choice. Please choose from science fiction, mystery, or non-fiction."
      print "Enter your choice: "
      genre = gets.chomp.strip.downcase  
    end

    display_results(@api.fetch_books(genre))
  end
  
  def sign_up
    puts "Enter username:"
    username = gets.chomp
    puts "Enter password:"
    password = gets.chomp
    User.new(username, password)  
    puts "Signed up successfully!"
    user_actions  
  end

  def login
    puts "Enter username:"
    username = gets.chomp
    puts "Enter password:"
    password = gets.chomp

    user = User.authenticate(username, password)
    if user
      @current_user = user
      puts "Logged in successfully!"
     user_actions 
    else
      puts "Invalid username or password."  
      user_actions  
    end
     end
  
    def logout
      @current_user = nil
      puts "Logged out successfully."
      user_actions  
  end

  def display_results(books)
    puts "\nFound the following books:"
    books.each_with_index do |book, index|
      puts "#{index + 1}. Title: #{book[:title]}"
    end
  end
end

