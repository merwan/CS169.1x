require "./hw0.rb"

describe "#sum" do
  it "returns correct sum" do
    sum([10, -4, 2, 5, 3]).should eq(16)
  end

  it "works on the empty array" do
    sum([]).should eq(0)
  end
end

describe "#max_2_sum" do
  it "returns the correct sum" do
    max_2_sum([12, 3, 5, 18, -4]).should eq(30)
  end

  it "works even if 2 largest values are the same" do
    max_2_sum([5, 4, 5]).should eq(10)
  end

  it "returns 0 if array is empty" do
    max_2_sum([]).should eq(0)
  end

  it "returns value of the element if just one element" do
    max_2_sum([456]).should eq(456)
  end
end
