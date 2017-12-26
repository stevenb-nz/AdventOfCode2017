require "rspec"
require_relative "day19b"

describe "day19" do
  it "returns 38 for 'day19_test1.txt' " do
    input = File.read("day19_test1.txt").chomp
    expect(day19(input)).to eq 38
  end
end
