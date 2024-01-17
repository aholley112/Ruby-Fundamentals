class CLI
api = Api.new
    puts "Welcome to the Goodreads CLI!"

    puts "Do you prefer science fiction, mystery, or non-fiction?"
    print "Enter your choice: "
    genre = gets.chomp.strip.downcase  

    until ["science fiction", "mystery", "non-fiction"].include?(genre)
      puts "Invalid choice. Please choose from science fiction, mystery, or non-fiction."
      print "Enter your choice: "
      genre = gets.chomp.strip.downcase  
    end

    display_results(api.fetch_books(genre))
  end

  def display_results(books)
    puts "\nFound the following books:"
    books.each_with_index do |book, index|
      puts "#{index + 1}. Title: #{book[:title]}, Author: #{book[:author]}"
    end
  end
end
