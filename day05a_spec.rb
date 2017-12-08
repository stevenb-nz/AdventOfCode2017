require "rspec"
require_relative "day05a"

describe "day05" do
  it "returns 5 for day05a_test1.txt" do
    input = File.read("day05a_test1.txt").chomp
    expect(day05(input)).to eq 5
  end
end
