require 'date'

class Book
  attr_reader :title
  def initialize(data)
    @author_first_name = data[:author_first_name]
    @author_last_name = data[:author_last_name]
    @title = data[:title]
    @publication_date = data[:publication_date]
  end

  def author 
    "#{@author_first_name} #{@author_last_name}"
  end

  def publication_year
    DateTime.parse(@publication_date).year
  end
end