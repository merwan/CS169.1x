require "./hw0.rb"

describe "#sum" do
  it "returns correct sum" do
    sum([10, -4, 2, 5, 3]).should eq(16)
  end

  it "works on the empty array" do
    sum([]).should eq(0)
  end
end
