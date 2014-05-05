require "./hw0-2.rb"

describe "#hello" do
  it "concatenates hello and name" do
    hello("bob").should eq("Hello, bob")
  end
end
