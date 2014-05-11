require './hw0-3.rb'

describe BookInStock do
  it "accepts isbn and price in the constructor" do
    BookInStock.new("isbn", 12.3)
  end

  it "raise an error if isbn is empty" do
    expect { BookInStock.new("", 12.3) }.to raise_error(ArgumentError)
  end

  it "raise an error if price is = 0" do
    expect { BookInStock.new("isbn", 0) }.to raise_error(ArgumentError)
  end

  it "raise an error if price is < 0" do
    expect { BookInStock.new("isbn", -4) }.to raise_error(ArgumentError)
  end

  it "has getters and setters for isbn" do
    book = BookInStock.new("isbn", 12.3)
    expect(book.isbn).to eq("isbn")
  end

  it "has getters and setters for price" do
    book = BookInStock.new("isbn", 12.3)
    expect(book.price).to eq(12.3)
  end

  it "returns the price as string" do
    book = BookInStock.new("isbn", 20)
    expect(book.price_as_string).to eq("$20.00")
  end
end
