require "rspec"
require_relative "day15b"

describe "day15" do
  it "returns 309 for 'day15_test1.txt' " do
    input = File.read("day15_test1.txt").chomp
    expect(day15(input)).to eq 309
  end
end
