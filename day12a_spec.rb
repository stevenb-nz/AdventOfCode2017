require "rspec"
require_relative "day12a"

describe "day12" do
  it "returns 6 for 'day12_test1.txt' " do
    input = File.read("day12_test1.txt").chomp
    expect(day12(input)).to eq 6
  end
end
