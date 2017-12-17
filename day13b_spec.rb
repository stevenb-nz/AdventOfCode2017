require "rspec"
require_relative "day13b"

describe "day13" do
  it "returns 10 for 'day13_test1.txt' " do
    input = File.read("day13_test1.txt").chomp
    expect(day13(input)).to eq 10
  end
end
