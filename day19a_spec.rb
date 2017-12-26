require "rspec"
require_relative "day19a"

describe "day19" do
  it "returns 'ABCDEF' for 'day19_test1.txt' " do
    input = File.read("day19_test1.txt").chomp
    expect(day19(input)).to eq 'ABCDEF'
  end
end
