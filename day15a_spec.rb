require "rspec"
require_relative "day15a"

describe "day15" do
  it "returns 588 for 'day15_test1.txt' " do
    input = File.read("day15_test1.txt").chomp
    expect(day15(input)).to eq 588
  end
end
