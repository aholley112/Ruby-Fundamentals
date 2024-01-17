require 'nokogiri'
require 'open-uri'

class Api
  def fetch_books(genre)
    url = construct_url(genre)
    doc = Nokogiri::HTML(URI.open(url))

    books = []
    
    doc.css('img.bookImage, img.bookCoverImage').first(3).each do |img|
      title = img['alt'].strip  
      cover_image = img['src'].strip  

      book_link = img.parent.name == 'a' ? 'https://www.goodreads.com' + img.parent['href'] : nil

      books << { title: title, cover_image: cover_image, link: book_link }
    end

    books
  end

  def construct_url(genre)
    "https://www.goodreads.com/genres/#{genre.downcase.gsub(" ", "-")}"
  end
end
