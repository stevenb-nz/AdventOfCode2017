require "rspec"
require_relative "day10a"

describe "day10" do
  it "returns 1 for '3, 4, 1, 5',5" do
    expect(day10("3, 4, 1, 5",5)).to eq 12
  end
end
