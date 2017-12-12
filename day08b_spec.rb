require "rspec"
require_relative "day08b"

describe "day08" do
  it "returns 10 for 'day08_test1.txt'" do
    input = File.read("day08_test1.txt").chomp
    expect(day08(input)).to eq 10
  end
end
