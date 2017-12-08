require "rspec"
require_relative "day05b"

describe "day05" do
  it "returns 10 for day05_test1.txt" do
    input = File.read("day05_test1.txt").chomp
    expect(day05(input)).to eq 10
  end
end
