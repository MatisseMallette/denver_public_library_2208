require './lib/author'

class Library
  attr_reader :name, :authors

  def initialize(name)
    @name = name
    @authors = []
  end

  def books 
    @authors.map {|author| author.books}.flatten
  end

  def add_author(author)
    @authors << author
  end

  def publication_time_frame_for(author)
    dates = author.books.map {|book| book.publication_year}.minmax.flatten 
    {
      start: dates.first, 
      end: dates.last
    }
  end
end