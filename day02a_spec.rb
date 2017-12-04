require "rspec"
require_relative "day02a"

describe "day02" do
  it "returns 18 for day02a_test1.txt" do
    input = File.read("day02a_test1.txt")
    expect(day02(input)).to eq 18
  end

end
