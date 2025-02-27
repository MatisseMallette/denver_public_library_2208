require 'rspec'
require './lib/book'

RSpec.describe Book do
  before(:each) do
    @book = Book.new({
      author_first_name: "Harper", 
      author_last_name: "Lee",
      title: "To Kill a Mockingbird", 
      publication_date: "July 11, 1960"
    })
  end

  it 'exists' do
    expect(@book).to be_an_instance_of(Book)
  end

  it 'has readable attributes' do
    expect(@book.title).to eq("To Kill a Mockingbird")
    expect(@book.author).to eq("Harper Lee")
    expect(@book.publication_year).to eq(1960)
  end
end