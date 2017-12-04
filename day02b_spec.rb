require "rspec"
require_relative "day02b"

describe "day02" do
  it "returns 9 for day02b_test1.txt" do
    input = File.read("day02b_test1.txt")
    expect(day02(input)).to eq 9
  end

end
