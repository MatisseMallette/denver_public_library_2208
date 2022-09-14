require 'rspec'
require './lib/author.rb'

RSpec.describe Author do 
  before(:each) do
    @author = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  it 'exists' do
    expect(@author).to be_an_instance_of(Author)
  end

  it 'has readable attributes' do 
    expect(@author.name).to eq("Charlotte Bronte")
    expect(@author.books).to eq([])
  end

  it 'can write book' do 
    book = @author.write("Jane Eyre", "October 16, 1847")
    expect(book.title).to eq("Jane Eyre")
    expect(book.publication_year).to eq("1847")
    expect(@author.books).to eq([book])
  end
end