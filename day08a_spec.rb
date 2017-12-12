require "rspec"
require_relative "day08a"

describe "day08" do
  it "returns 1 for 'day08_test1.txt'" do
    input = File.read("day08_test1.txt").chomp
    expect(day08(input)).to eq 1
  end
end
