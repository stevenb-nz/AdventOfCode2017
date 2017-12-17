require "rspec"
require_relative "day13a"

describe "day13" do
  it "returns 24 for 'day13_test1.txt' " do
    input = File.read("day13_test1.txt").chomp
    expect(day13(input)).to eq 24
  end
end
