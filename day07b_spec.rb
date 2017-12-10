require "rspec"
require_relative "day07b"

describe "day07" do
  it "returns 60 for 'day07_test1.txt'" do
    input = File.read("day07_test1.txt").chomp
    expect(day07(input)).to eq 60
  end
end
