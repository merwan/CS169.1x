require "./hw0-2.rb"

describe "#hello" do
  it "concatenates hello and name" do
    hello("bob").should eq("Hello, bob")
  end
end

describe "#starts_with_consonant?" do
  it "returns false when starts with a voyel" do
    starts_with_consonant?("aze").should be_false
    starts_with_consonant?("ert").should be_false
    starts_with_consonant?("iop").should be_false
    starts_with_consonant?("op^l").should be_false
    starts_with_consonant?("uio").should be_false
  end

  it "returns true when starts with a consonant" do
    starts_with_consonant?("qsd").should be_true
  end
end
