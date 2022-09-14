require 'rspec'
require './lib/library'
require './lib/author'

RSpec.describe Library do
  before(:each) do 
    @library = Library.new("Denver Public Library")

    @author1 = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @book1 = @author1.write("Jane Eyre", "October 16, 1847")
    @book2 = @author1.write("The Professor", "1857")
  
    @author2 = Author.new({first_name: "Harper", last_name: "Lee"})
    @book3 = @author2.write("To Kill a Mockingbird", "July 11, 1960")

    @library.add_author(@author1)
    @library.add_author(@author2)
  end

  it 'exists' do 
    expect(@library).to be_an_instance_of(Library)
  end

  it 'has readable attributes' do 
    expect(@library.authors).to eq([@author1, @author2])
    expect(@library.books).to eq([@book1, @book2, @book3])
  end

  it 'can provide publication time frame for given author' do 
    expect(@library.publication_time_frame_for(@author1)).to eq({start:"1847", end:"1857"})
  end
end